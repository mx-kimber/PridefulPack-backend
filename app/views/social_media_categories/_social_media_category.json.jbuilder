json.extract! social_media_category, :id, :platform, :platform_logo

json.social_media_accounts social_media_category.social_media_accounts do |social_media_account|
  json.extract! social_media_account, :id, :account_handle, :account_URL
end
