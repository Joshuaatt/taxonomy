class Genus < ActiveRecord::Base
  belongs_to :taxaclass
  belongs_to :subclass
  belongs_to :superorder
  belongs_to :order
  belongs_to :family
  has_many :species
end
