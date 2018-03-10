class AddColumnsToGostations < ActiveRecord::Migration[5.1]
  def change
    add_column :go_stations, :Address, :string
  end
end
