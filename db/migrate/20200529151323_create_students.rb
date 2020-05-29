class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.belongs_to :teacher
      t.string :name
      t.decimal :grade_average, precision: 5, scale: 2
    end
  end
end
