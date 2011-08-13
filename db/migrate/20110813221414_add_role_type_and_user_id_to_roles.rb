class AddRoleTypeAndUserIdToRoles < ActiveRecord::Migration
  def self.up
    add_column :roles, :role_type, :string
    add_column :roles, :user_id, :string
  end

  def self.down
    remove_column :roles, :user_id
    remove_column :roles, :role_type
  end
end
