class Api::AssignmentsController < ApplicationController
  validates :due_date, :title, presence: true
end