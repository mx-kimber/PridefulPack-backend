class CreateSocialMediaAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :social_media_accounts do |t|
      t.string :user_id
      t.string :account_handle
      t.string :account_URL
      t.references :social_media_category, foreign_key: true
      
      t.timestamps
    end
  end
end