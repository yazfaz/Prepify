class Question < ActiveRecord::Base
  
  include ActiveModel::Validations
  validates_with AdminFormValidator
  
  serialize :choices, Array
  has_one :page, as: :pageable

  has_one :answer

  mount_uploader :image, ImageUploader

  # Form validations 
   validates :body, :choices, :correct_answer, presence: true

  # In order to create a question, the page must be valid. 
  validates_associated :page




  
  def page_attributes=(page_attributes)
    page_attributes.each do |attributes|
      page.build(attributes)
    end
  end

  def text_choices
    choices.join("\n")
  end

  def text_choices=(text_choices)
    self.choices = text_choices.split("\n").map(&:strip)
  end

end
