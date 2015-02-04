class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
