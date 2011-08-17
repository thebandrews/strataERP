class CostCenter < ActiveRecord::Base
  validates :name, :presence => true
  validates :detail, :presence => true
  validates :summary, :presence => true

  has_many :accounts

end
