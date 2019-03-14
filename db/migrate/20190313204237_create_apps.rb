class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :log_path
      t.string :app_path
      t.string :restart_command

      t.timestamps
    end
  end
end
