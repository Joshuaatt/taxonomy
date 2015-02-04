class Species < ActiveRecord::Base
  def table_name
    'species'
  end
  belongs_to :class
  belongs_to :subclass
  belongs_to :superorder
  belongs_to :order
  belongs_to :family
  belongs_to :genus
end
