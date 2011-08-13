class AddUserIdToUserLogs < ActiveRecord::Migration
  def self.up
    add_column :user_logs, :user_id, :string
  end

  def self.down
    remove_column :user_logs, :user_id
  end
end
