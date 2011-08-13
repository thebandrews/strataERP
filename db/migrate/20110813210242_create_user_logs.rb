class CreateUserLogs < ActiveRecord::Migration
  def self.up
    create_table :user_logs do |t|
      t.datetime :log_in
      t.datetime :log_out
      t.text :report_access_list
      t.text :template_access_list
      t.text :report_update_list
      t.text :template_update_list

      t.timestamps
    end
  end

  def self.down
    drop_table :user_logs
  end
end
