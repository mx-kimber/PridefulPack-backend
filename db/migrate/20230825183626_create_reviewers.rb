class CreateReviewers < ActiveRecord::Migration[7.0]
  def change
    create_table :reviewers do |t|
      t.string :source
      t.string :uid
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
