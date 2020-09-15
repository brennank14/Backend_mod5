StudentQuestion.destroy_all
Question.destroy_all
Student.destroy_all
Teacher.destroy_all



Teacher.create(username: "brennank", password: "brennank", name: "Kathleen Brennan", user_type: "teacher")


Student.create(username: "Sarah", password: "burke", name: "Sarah Burke", teacher_id:  1, user_type: "student")
Student.create(username: "Sam", password: "brennan", name: "Sam Brennan", teacher_id:  1, user_type: "student")
Student.create(username: "Ryan", password: "brennan", name: "Ryan Brennan", teacher_id:  1, user_type: "student")
Student.create(username: "Kelsey", password: "strode", name: "Kelsey Strode", teacher_id:  1, user_type: "")


Question.create(name: "Q1", content: "rsgresg", teacher_id: 1, points: 5)
Question.create(name: "Q2", content: "grsgr", teacher_id: 1, points: 5)


StudentQuestion.create(student_id: 1, question_id: 2, grade: 4, feedback: "good")

