class Create < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.column :name, :string
    end
    create_table :lines do |t|
      t.column :name, :string
    end
  end
end
