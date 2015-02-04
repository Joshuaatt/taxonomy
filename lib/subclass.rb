class Subclass < ActiveRecord::Base
  belongs_to :class
  has_many :superorders
  has_many :orders
  has_many :families
  has_many :genera
  has_many :species
end
