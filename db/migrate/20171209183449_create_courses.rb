class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :code
      t.string :study_type_enum
      t.string :language_enum

      t.timestamps
    end
  end
end
