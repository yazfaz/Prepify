class Question < ActiveRecord::Base
  serialize :choices, Array
  has_one :page, as: :pageable

  has_one :answer

  def page_attributes=(page_attributes)
  page_attributes.each do |attributes|
    page.build(attributes)
  end
end
end
