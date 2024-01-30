class CreateSocialMediaCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :social_media_categories do |t|
      t.string :platform
      t.string :platform_logo
      
      t.timestamps
    end
  end
end
