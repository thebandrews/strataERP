class AddCostCenterIdToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :cost_center_id, :integer
  end

  def self.down
    remove_column :accounts, :cost_center_id
  end
end
