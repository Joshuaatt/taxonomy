class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.belongs_to :angiosperms, index: true
      t.timestamps null: false
    end
  end
end
