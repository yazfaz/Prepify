class Page < ActiveRecord::Base
  # before_create :check_sequence
  belongs_to :pageable, polymorphic: true

  belongs_to :subject

  # A page must have a subject id to be created. 
  validates :subject_id, presence: true

  # A page should only be created if it's associated subject is valid
  validates_associated :subject
 
end
