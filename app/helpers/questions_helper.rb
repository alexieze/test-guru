module QuestionsHelper
  def question_header(question)
    if question.new_record?
      "Create #{question.title} Question"
    else
      "Edit #{question.title} Question"
    end
  end
end
