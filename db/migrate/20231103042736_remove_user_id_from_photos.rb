class RemoveUserIdFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :user_id, :integer
  end
end
