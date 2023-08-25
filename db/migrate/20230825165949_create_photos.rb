class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :pet_photo
      t.string :pet_name
      t.text :caption

      t.timestamps
    end
  end
end
