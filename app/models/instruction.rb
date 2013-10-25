class Instruction < ActiveRecord::Base
  has_one :page, as: :pageable

  mount_uploader :image, ImageUploader
end
