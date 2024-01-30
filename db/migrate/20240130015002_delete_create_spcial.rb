class DeleteCreateSpcial < ActiveRecord::Migration[7.0]
  def change
    drop_table :create_social_media_accounts
    drop_table :create_social_media_categories
  end

end
