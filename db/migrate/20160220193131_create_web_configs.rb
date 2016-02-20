class CreateWebConfigs < ActiveRecord::Migration
  def change
    create_table :web_configs do |t|
      t.text :directory
      t.long :scan_interval
      t.long :old

      t.timestamps null: false
    end
  end
end
