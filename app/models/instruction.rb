class Instruction < ActiveRecord::Base
  has_one :page, as: :pageable
  # , :autosave => false

  mount_uploader :image, ImageUploader

  # attr_accessible :image
  attr_accessor :image

end
