class ChangeLatLongType < ActiveRecord::Migration[5.1]
  def change
    change_column :go_stations, :latitude, :float
    change_column :go_stations, :longitude, :float
  end
end
