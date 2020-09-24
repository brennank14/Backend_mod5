class CreateStudentQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :student_questions do |t|
      t.integer :student_id
      t.integer :question_id
      t.float :grade
      t.text :feedback
      t.text :answer
      t.boolean :graded, :default => false

      t.timestamps
    end
  end
end
