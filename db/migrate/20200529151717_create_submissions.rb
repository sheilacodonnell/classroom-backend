class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.belongs_to :student
      t.belongs_to :assignment
      t.decimal :grade, precision: 5, scale: 2
    end
  end
end
