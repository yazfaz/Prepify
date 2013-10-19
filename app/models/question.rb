class Question < ActiveRecord::Base
  serialize :choices, Array
  has_many :pages, as: :pageable

  has_one :answer
end
