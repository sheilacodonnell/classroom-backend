class Assignment < ApplicationRecord
  belongs_to :teacher
  validates :due_date, :title, presence: true
end