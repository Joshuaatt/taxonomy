class CreateClasses < ActiveRecord::Migration
  def change
    create_table :Classes do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
