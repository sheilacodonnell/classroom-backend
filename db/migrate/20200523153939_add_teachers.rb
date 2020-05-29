class AddTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.belongs_to :teacher
      t.string :name
      t.timestamps
    end
  end
end
