class TestsController < ApplicationController

  before_action :all
  before_action :find_test, only: [:show, :edit, :update, :destroy]
  before_action :test_params, only: [:create, :update]

  def index; end

  def edit; end

  def show; end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @test.user_id = 1
    if @test.save
      redirect_to tests_path(@tests)
    else
      render :new
    end
  end



  def destroy
    @test.destroy
    redirect_to tests_path(@tests)
  end

  def update
    if @test.update(get_params)
      redirect_to tests_path
    else
      render :edit
    end
  end

  private

  def all
    @tests = Test.all
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :level, :category_id, :published)
  end

end
