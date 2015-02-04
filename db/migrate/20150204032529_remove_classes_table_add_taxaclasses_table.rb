class RemoveClassesTableAddTaxaclassesTable < ActiveRecord::Migration
  def up
    create_table :taxaclasses do |t|
      t.column :name, :string
      t.timestamps
    end
  end

  def down
    drop_table :classes
  end
end
