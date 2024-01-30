class CreateCreateSocialMediaAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :create_social_media_accounts do |t|
      t.integer :user_id
      t.string :social_media_category_id
      t.string :account_handle
      t.string :account_URL

      t.timestamps
    end
  end
end
