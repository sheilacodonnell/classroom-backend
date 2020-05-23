class AddAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.belongs_to :teacher
      t.string :title
      t.text :description
      t.datetime :due_date
    end
  end
end
