class ModifyExtraServiceOfferings < ActiveRecord::Migration[7.0]
  def change
    rename_column :service_offerings, :extra_services, :extra_service
  end
end
