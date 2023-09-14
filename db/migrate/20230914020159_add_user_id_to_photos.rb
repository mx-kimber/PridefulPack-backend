class AddUserIdToPhotos < ActiveRecord::Migration[6.1]
  def change
    add_column :photos, :user_id, :integer
  end
end