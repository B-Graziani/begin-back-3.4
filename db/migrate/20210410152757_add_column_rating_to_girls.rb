class AddColumnRatingToGirls < ActiveRecord::Migration[6.0]
  def change
    add_column :girls, :rating, :integer
  end
end
