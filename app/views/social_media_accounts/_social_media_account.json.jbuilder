json.array! social_media_accounts do |social_media_account|
  json.extract! social_media_account, :id, :account_handle, :account_URL
  json.user social_media_account.user, :first_name, :last_name, :email
end

