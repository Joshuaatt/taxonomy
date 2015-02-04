class Family < ActiveRecord::Base
  belongs_to :class
  belongs_to :subclass
  belongs_to :superorder
  belongs_to :order
  has_many :genera
  has_many :species
end
