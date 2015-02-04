class RemoveTablesTaxaclassesOrdersSubordersSubclassesSuperorders < ActiveRecord::Migration
  def up
    create_table :angiosperms do |t|
      t.timestamps
    end
  end
  def down
    drop_table :taxaclasses
    drop_table :orders
    drop_table :superorders
    drop_table :subclasses
  end
end
