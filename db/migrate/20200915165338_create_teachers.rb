class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :user_type

      t.timestamps
    end
  end
end
