class ChangeLatlongTypeToDouble < ActiveRecord::Migration[5.1]
  def change
    change_column :go_stations, :latitude, :double
    change_column :go_stations, :longitude, :double
  end
end
