class Family < ActiveRecord::Base
  belongs_to :orders
  has_many :genera
end
