class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :sku_number
      t.string :language
      t.string :version_number
      t.string :copyright
      t.integer :category
      t.string :description
      t.string :keywords
      t.decimal :price
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
    add_index :apps, :name
    add_index :apps, :sku_number
    
    add_index :apps, [:name, :sku_number], unique: true
    
  end
end
