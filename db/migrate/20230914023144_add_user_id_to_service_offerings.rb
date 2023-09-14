class AddUserIdToServiceOfferings < ActiveRecord::Migration[7.0]
  def change
    add_column :service_offerings, :user_id, :integer
  end
end
