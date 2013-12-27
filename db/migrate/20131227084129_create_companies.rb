class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name,  :default => ""
      t.integer :user_id,  :default => 0
      t.text :info,     :default => ""
      t.integer :status,  :default => 0

      t.timestamps
    end
  end
end
