class Subclass < ActiveRecord::Base
  belongs_to :taxaclass
  has_many :superorders
  has_many :orders
  has_many :families
  has_many :genera
  has_many :species
end
