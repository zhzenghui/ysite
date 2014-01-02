class CreateBlockTyps < ActiveRecord::Migration
  def change
    create_table :block_types do |t|
      t.string :show_name
      t.string :name

      t.timestamps
    end
  end
end
