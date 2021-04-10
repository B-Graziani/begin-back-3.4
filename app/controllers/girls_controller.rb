class GirlsController < ApplicationController
  def index
    @girls = Girl.all
  end
  def show
    @girl = Girl.find(params[:id])
  end
  def new
    @girl = Girl.new
  end
  def create
    @girl = Girl.new(girl_params)
    if @girl.save
      redirect_to girl_path(@girl)
    else
      render :new
    end
  end
  def edit
    @girl = Girl.find(params[:id])
  end
  def update
    @girl = Girl.find(params[:id])
    @girl.update(girl_params)
    redirect_to girl_path(@girl)
  end
  def destroy
    @girl = Girl.find(params[:id])
    @girl.destroy
    redirect_to girls_path
  end

  private
  def girl_params
    params.require(:girl).permit(:name, :size, :weight)
  end
end
