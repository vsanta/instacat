class AddCatPhotoToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :cat_photo, :string
  end
end
