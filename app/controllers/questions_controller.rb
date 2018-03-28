class QuestionsController < ApplicationController
  before_action :get_test
  before_action :get_question, only: [:edit, :update, :show]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_from_test_not_found

  def index
    @questions = @test.questions.all
  end

  def new
    @question = @test.questions.new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_questions_url(@test)
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to test_questions_url(@test)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to test_questions_url(@test)
  end

  private

  def get_test
    @test = Test.find(params[:test_id])
  end

  def get_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :body, :published)
  end

  def rescue_from_question_not_found
    render plain: 'Question not found', status: 404
  end
end
