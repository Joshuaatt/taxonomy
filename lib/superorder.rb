class Superorder < ActiveRecord::Base
  belongs_to :subclass
  has_many :orders
end
