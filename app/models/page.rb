class Page < ActiveRecord::Base
  belongs_to :pageable, polymorphic: true

  belongs_to :subject
end
