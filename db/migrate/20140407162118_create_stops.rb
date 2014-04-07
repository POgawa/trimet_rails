class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.column :station_id, :int
      t.column :line_id, :int
    end
  end
end
