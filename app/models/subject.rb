class Subject < ActiveRecord::Base
  has_many :users, through: :course_progressions
  has_many :course_progressions
  has_many :pages

  validates :section, :name, presence: true

  def self.all_with_pages
    Subject.includes(:pages).all.reject do |subject|
      subject.pages.size == 0
    end
  end
end
