class AddAddressDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :street_address, :string
    add_column :users, :unit_number, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :address_details, :string
  end
end
