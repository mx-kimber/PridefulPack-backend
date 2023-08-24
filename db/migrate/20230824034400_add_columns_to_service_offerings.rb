class AddColumnsToServiceOfferings < ActiveRecord::Migration[7.0]
  def change
    add_column :service_offerings, :duration, :string
    add_column :service_offerings, :included, :text
    add_column :service_offerings, :extra_service, :string
    add_column :service_offerings, :extra_service_price, :integer
  end
end
