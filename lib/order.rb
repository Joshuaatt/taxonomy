class Order < ActiveRecord::Base
  belongs_to :superorder
  has_many :families
end
