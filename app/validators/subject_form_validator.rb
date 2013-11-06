class SubjectFormValidator < ActiveModel::Validator

  def validate(subject)
    unless subject.name.length > 0
      subject.errors[:name] << 'must be not be blank.'
      
    end
  end
end