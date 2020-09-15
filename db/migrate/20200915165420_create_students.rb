class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :user_type
      t.integer :teacher_id

      t.timestamps
    end
  end
end
