class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name, null: false
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
