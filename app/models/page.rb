class Page < ActiveRecord::Base
  belongs_to :pageable, polymorphic: true

  belongs_to :subject
  mount_uploader :image, ImageUploader
end
