class CreateAdminComments < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_comments do |t|
      t.integer :review_id
      t.integer :user_id
      t.text :admin_comment

      t.timestamps
    end
  end
end
