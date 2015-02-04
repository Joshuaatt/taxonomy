class RemoveColumnAngiospermsIdAddColumnAngiospermId < ActiveRecord::Migration
  def change
    remove_column :families, :angiosperms_id, :integer
    add_column :families, :angiosperm_id, :integer
  end
end
