class AdminFormValidator < ActiveModel::Validator

  # def validate(question)
  #   unless question.choices.include?(question.correct_answer)
  #     question.errors[:correct_answer] << 'The correct answer must be included in the question choices.'
  #   end
  # end
end