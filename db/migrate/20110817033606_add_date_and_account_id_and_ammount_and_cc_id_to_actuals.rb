class AddDateAndAccountIdAndAmmountAndCcIdToActuals < ActiveRecord::Migration
  def self.up
    add_column :actuals, :date, :datetime
    add_column :actuals, :account_id, :integer
    add_column :actuals, :ammount, :decimal
    add_column :actuals, :cc_id, :integer
  end

  def self.down
    remove_column :actuals, :cc_id
    remove_column :actuals, :ammount
    remove_column :actuals, :account_id
    remove_column :actuals, :date
  end
end
