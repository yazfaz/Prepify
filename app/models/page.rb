class Page < ActiveRecord::Base
  before_create :set_sequence_id 
  belongs_to :pageable, polymorphic: true
  belongs_to :subject
  # A page must have a subject id to be created. 
  validates :subject_id, presence: true
  # A page should only be created if it's associated subject is valid
  validates_associated :subject
 
  def set_sequence_id
     # ||= will set the sequence_id only if it is not already set
     # the pages subject should be able to tell you what the next sequence_id is
     self.sequence_id ||= self.subject.next_sequence_id
   end
end
