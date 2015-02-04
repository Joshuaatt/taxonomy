class CreateSubclasses < ActiveRecord::Migration
  def change
    create_table :subclasses do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
