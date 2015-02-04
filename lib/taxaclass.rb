class TaxaClass < ActiveRecord::Base
  has_many :subclasses
  has_many :superorders
  has_many :orders
  has_many :families
  has_many :genera
  has_many :species
end
