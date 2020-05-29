class Assignment < ApplicationRecord
  belongs_to :teacher
  has_many :submissions
  validates :due_date, :title, presence: true
end