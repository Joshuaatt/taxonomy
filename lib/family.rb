class Family < ActiveRecord::Base
  belongs_to :order
  has_many :genera
end
