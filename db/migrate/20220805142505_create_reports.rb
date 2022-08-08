class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.references :company, null: false, foreign_key: true
      t.string :location_country
      t.string :location_county
      t.datetime :start_date
      t.datetime :end_date
      t.string :currency
      t.integer :revenue
      t.integer :employee_count
      t.integer :eletricity_usage
      t.boolean :renewables
      t.boolean :owned_vehicles
      t.integer :quantity_vehciles
      t.boolean :office_size
      t.string :building_heating_type
      t.integer :building_heating_quantity
      t.integer :total_expenses
      t.integer :flight_expenses
      t.integer :train_expenses
      t.string :phone_computer_expenses
      t.string :legal_consultancy_expenses

      t.timestamps
    end
  end
end
