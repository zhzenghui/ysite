class CreateNavTypes < ActiveRecord::Migration
  def change
    create_table :nav_types do |t|
      t.string :name
      t.string :show_name
      t.string :pic

      t.timestamps
    end
  end
end
