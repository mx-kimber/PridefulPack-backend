class ModifyServiceOfferings < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_offerings, :extra_service_price
    rename_column :service_offerings, :extra_service, :extra_services
  end
end
