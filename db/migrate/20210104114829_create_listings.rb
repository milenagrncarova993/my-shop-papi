class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :category
      t.string :price
      t.string :size
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
