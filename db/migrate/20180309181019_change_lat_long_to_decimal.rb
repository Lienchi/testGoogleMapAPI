class ChangeLatLongToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :go_stations, :latitude, :decimal
    change_column :go_stations, :longitude, :decimal
  end
end
