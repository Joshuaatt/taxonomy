class CreateSuperorders < ActiveRecord::Migration
  def change
    create_table :superorders do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
