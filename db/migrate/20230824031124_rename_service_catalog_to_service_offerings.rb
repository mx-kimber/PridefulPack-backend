class RenameServiceCatalogToServiceOfferings < ActiveRecord::Migration[7.0]
  def change
    rename_table :service_catalogs, :service_offerings
  end
end
