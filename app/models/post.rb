class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :cat_photo, CatPhotoUploader
  scope :by_user, lambda { |user|
    where(:user_id => user.id)
  }
end
