class Subclass < ActiveRecord::Base
  belongs_to :class
  has_many :superorders
end
