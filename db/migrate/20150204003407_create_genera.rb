class CreateGenera < ActiveRecord::Migration
  def change
    create_table :genera do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
