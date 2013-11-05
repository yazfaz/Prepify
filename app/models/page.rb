class Page < ActiveRecord::Base
  before_create :set_sequence_id 
  belongs_to :pageable, polymorphic: true
  belongs_to :subject
  # Use PageFormValidator to make sure sequence_id is at least 1.
  # include ActiveModel::Validations
  # validates_with PageFormValidator
  # A page must have a subject id to be created. 
  validates :subject_id, presence: true
  validates :pageable, presence: true

  # A page should only be created if it's associated subject is valid
  validates_associated :subject
 
  def set_sequence_id
     # ||= will set the sequence_id only if it is not already set
     # the pages subject should be able to tell you what the next sequence_id is
     self.sequence_id ||= self.subject.next_sequence_id
   end

  def body_snippet
    self.pageable.body.to_s.truncate 50
  end
  
end
