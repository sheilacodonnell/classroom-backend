class Api::SubmissionsController < ApplicationController
  before_action :load_assignment, only: [:create, :show, :edit, :update, :destroy]
  before_action :load_student, only: [:show, :edit, :update, :destroy]

  def index
    @submissions = @assignment.submissions
    render json: @submissions
  end

  def create
    @submission = @assignment.submissions.build(submission_params)
    if @submission.save
      render json: @assignment
    else
      render json: { error: 'There was a problem creating the submission!'}
    end
  end

  def show
    @submission = Submission.find(params[:id])
    render json: @submission
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def load_assignment
    @assignment = Assignment.find(params[:assignment_id])
  end

  def load_student
    @student = Student.where(id: params[:student_id])
  end

  def submission_params
    params.require(:submission).permit([
      :student_id,
      :assignment_id,
      :grade
    ])
  end
end