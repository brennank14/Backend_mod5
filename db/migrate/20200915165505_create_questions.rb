class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.text :content
      t.integer :teacher_id
      t.integer :points

      t.timestamps
    end
  end
end
