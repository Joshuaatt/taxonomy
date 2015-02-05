class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name
      t.belongs_to :angiosperm, index: true
      t.belongs_to :family, index: true
      t.belongs_to :genus, index: true
      t.timestamps null: false
    end
  end
end
