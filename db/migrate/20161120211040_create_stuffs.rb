class CreateStuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :stuffs do |t|
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end