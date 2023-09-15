class Review < ApplicationRecord
  belongs_to :reviewer
  has_many :admin_comments

  before_destroy :delete_associated_admin_comment
  private

  def delete_associated_admin_comment
    admin_comment = AdminComment.find_by(review_id: self.id)
    admin_comment&.destroy
  end
end
