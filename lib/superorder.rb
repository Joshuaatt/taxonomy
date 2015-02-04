class Superorder < ActiveRecord::Base
  belongs_to :taxaclass
  belongs_to :subclass
  has_many :orders
  has_many :families
  has_many :genera
  has_many :species

end
