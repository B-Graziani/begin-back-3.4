class ReviewsController < ApplicationController
  def new
    @girl = Girl.find(params[:girl_id])
    @review = Review.new
  end
  def create
    @girl = Girl.find(params[:girl_id])
    @review = Review.new(review_params)
    @review.girl = @girl
    if @review.save
      redirect_to girl_path(@girl)
    else
      render :new
    end
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to girl_path(@review.girl)
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
