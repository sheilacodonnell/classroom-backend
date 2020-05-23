class Api::AssignmentsController < ApplicationController
  before_action :load_assignment, only: [:show, :edit, :update, :destroy]
  before_action :load_teacher

  def index
    @assignments = @teacher.assignments
    render json: @assignments
  end

  def create
    @assignment = @teacher.assignments.build(assignment_params)
    if @assignment.save
      render json: @assignment
    else
      render json: { error: 'There was a problem creating the account!'}
    end
  end

  def show
    render json: @assignment
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def load_teacher
    @teacher = Teacher.find(params[:teacher_id])
  end

  def load_assignment
    @assignment = Assignment.find(params[:id])
  end

  def assignment_params
    params.require(:assignment).permit([
      :title,
      :due_date,
      :description
    ])
  end
end