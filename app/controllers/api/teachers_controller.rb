class Api::TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    render json: @teachers
    # this is whats sent to our front end after a fetch request is made
  end

  def create
    @teacher = Teacher.create(teacher_params)
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