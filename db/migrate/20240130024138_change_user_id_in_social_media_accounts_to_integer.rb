class ChangeUserIdInSocialMediaAccountsToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :social_media_accounts, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end

