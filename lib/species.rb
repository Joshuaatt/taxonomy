class Species < ActiveRecord::Base
  def table_name
    'species'
  end
  belongs_to :genus
end
