class RenameGostationName < ActiveRecord::Migration[5.1]
  def change
    rename_column :go_stations, :name, :LocName
  end
end
