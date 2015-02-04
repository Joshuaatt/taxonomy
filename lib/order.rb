class Order < ActiveRecord::Base
  belongs_to :taxaclass
  belongs_to :subclass
  belongs_to :superorder
  has_many :families
  has_many :genera
  has_many :species
end
