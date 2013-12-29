class CreateAppVersions < ActiveRecord::Migration
  def change
    create_table :app_versions do |t|
      t.integer :app_id
      t.string :version_number
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
