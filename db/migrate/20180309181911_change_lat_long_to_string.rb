class ChangeLatLongToString < ActiveRecord::Migration[5.1]
  def change
    change_column :go_stations, :latitude, :string
    change_column :go_stations, :longitude, :string
  end
end
