class Account < ActiveRecord::Base
  validates :name, :presence => true
  validates :detail, :presence => true
  validates :summary, :presence => true

  belongs_to :cost_center

end
