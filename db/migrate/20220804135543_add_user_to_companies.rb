class AddUserToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :user_id, :integer
  end
end
