class CreateNavgations < ActiveRecord::Migration
  def change
    create_table :navgations do |t|
      t.integer :app_id
      t.integer :nav_type_id
      t.integer :status

      t.timestamps
    end
  end
end
