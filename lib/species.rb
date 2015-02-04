class Species < ActiveRecord::Base
  def table_name
    'species'
  end
  belongs_to :angiosperm
  belongs_to :family
  belongs_to :genus
end
