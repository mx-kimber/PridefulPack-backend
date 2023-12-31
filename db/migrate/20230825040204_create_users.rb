class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :password_digest
      t.string :profile_photo
      t.boolean :admin_permission
      t.text :bio

      t.timestamps
    end
  end
end
