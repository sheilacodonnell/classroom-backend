class Api::StudentsController < ApplicationController
  def index
    @students = Student.all
    render json: @teachers
    # this is whats sent to our front end after a fetch request is made
  end

  def create
    @student = Student.create(student_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end