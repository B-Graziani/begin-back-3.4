class CreateGirls < ActiveRecord::Migration[6.0]
  def change
    create_table :girls do |t|
      t.string :name
      t.integer :size
      t.integer :weight

      t.timestamps
    end
  end
end
