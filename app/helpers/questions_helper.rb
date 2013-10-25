module QuestionsHelper

  def check_answer(question)
     question.choices.each do |choice|
      if choice = question.correct_answer
        return choice
      end
    end
  end
end
