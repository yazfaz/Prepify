class Subject < ActiveRecord::Base
  validates_with SubjectFormValidator
  has_many :users, through: :course_progressions
  has_many :course_progressions
  has_many :pages

  validates :name, presence: true

  # Checks and rejects if a subject does not have pages. 
  def self.all_with_pages
    Subject.includes(:pages).all.reject do |subject|
      subject.pages.size == 0
    end
  end

   # Order pages by sequence id
   def page_order
    self.pages.order('sequence_id')
  end

  #Sort pages by sequence id and grab the last.
  def last_page
    self.pages.order('sequence_id').last
  end

  def first_page
    self.pages.order('sequence_id').first
  end
 
  
  #Method to  find out what this last last_sequence_id of a subject is.
  def last_sequence_id
    #if the last page exists, return its sequence_id otherwise return 0
    last_page ? last_page.sequence_id : 0
  end
  
  # the next sequence_id is just the last_sequence_id + 1
  def next_sequence_id
    last_sequence_id + 1
  end

  def first_sequence_id
    first_page ? first_page.sequence_id : 0
  end

end
