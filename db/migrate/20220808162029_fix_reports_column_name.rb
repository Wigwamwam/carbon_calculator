class FixReportsColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :reports, :quantity_vehciles, :quantity_vehicles
  end
end
