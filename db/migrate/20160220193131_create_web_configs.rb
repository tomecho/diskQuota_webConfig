class CreateWebConfigs < ActiveRecord::Migration
  def change
    create_table :web_configs do |t|
      t.text :directory
      t.integer :scan_interval, limit: 8
      t.integer :old, limit: 8

      t.timestamps null: false
    end
  end
end
