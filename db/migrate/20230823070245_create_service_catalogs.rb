class CreateServiceCatalogs < ActiveRecord::Migration[7.0]
  def change
    create_table :service_catalogs do |t|
      t.string :service
      t.integer :price

      t.timestamps
    end
  end
end
