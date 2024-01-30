json.extract! social_media_account, :id, :account_handle, :account_URL

json.user social_media_account.user, :id, :first_name, :last_name, :email

json.social_media_category social_media_account.social_media_category, :id, :platform, :platform_logo
