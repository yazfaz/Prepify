class Question < ActiveRecord::Base
  serialize :choices, Array
  has_one :page, as: :pageable

  has_one :answer

  mount_uploader :image, ImageUploader

  
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
