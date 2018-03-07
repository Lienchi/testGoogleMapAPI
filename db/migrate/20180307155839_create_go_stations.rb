class CreateGoStations < ActiveRecord::Migration[5.1]
  def change
    create_table :go_stations do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
