class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :subjects, through: :course_progressions
  has_many :course_progressions
  has_many :posts


  def started_subject?(subject)
    course_progressions.where(:subject_id => subject.id).exists?
  end

  def completed_subject?(subject)
    course_progressions
        .where(:subject_id => subject.id)
        .where("completed_at is not null")
        .exists?
  end
end
