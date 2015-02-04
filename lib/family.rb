class Family < ActiveRecord::Base
  belongs_to :angiosperm
  # has_many :genera
  has_many :species
end
