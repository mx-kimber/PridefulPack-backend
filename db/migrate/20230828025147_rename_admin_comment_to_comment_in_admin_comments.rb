class RenameAdminCommentToCommentInAdminComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :admin_comments, :admin_comment, :comment
  end
end

