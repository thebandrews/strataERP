class CreateForecasts < ActiveRecord::Migration
  def self.up
    create_table :forecasts do |t|
      t.integer :account_id
      t.decimal :value
      t.integer :cc_id
      t.string :period
      t.string :version
      
      t.timestamps
    end
  end

  def self.down
    drop_table :forecasts
  end
end
