class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :block_type_id
      t.integer :app_id

      t.timestamps
    end
  end
end
