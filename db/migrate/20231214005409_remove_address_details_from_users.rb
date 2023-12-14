class RemoveAddressDetailsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :address_details, :string
  end
end
