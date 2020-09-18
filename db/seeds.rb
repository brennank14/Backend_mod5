StudentQuestion.destroy_all
Question.destroy_all
Student.destroy_all
Teacher.destroy_all



Teacher.create(username: "brennank", password: "brennank", name: "Kathleen B", user_type: "teacher")
Teacher.create(username: "bbrennan", password: "bbrennan", name: "Brian H", user_type: "teacher")


Student.create(username: "Sarah", password: "burke", name: "Sarah B", teacher_id:  1, user_type: "student")
Student.create(username: "Sam", password: "brennan", name: "Sam B", teacher_id:  1, user_type: "student")
Student.create(username: "Ryan", password: "brennan", name: "Ryan B", teacher_id:  1, user_type: "student")
Student.create(username: "Kelsey", password: "strode", name: "Kelsey S", teacher_id:  2, user_type: "student")
Student.create(username: "Clare", password: "clare", name: "Clare W", teacher_id:  2, user_type: "student")
Student.create(username: "Lauren", password: "lauren", name: "Lauren D", teacher_id:  2, user_type: "student")


Question.create(name: "Q1 k", content: "kathleen 1", teacher_id: 1, points: 5)
Question.create(name: "Q2 k", content: "kathleen 2", teacher_id: 1, points: 5)
Question.create(name: "Q1 b", content: "brian 1", teacher_id: 2, points: 5)
Question.create(name: "Q2 b", content: "brian 2", teacher_id: 2, points: 5)


StudentQuestion.create(student_id: 1, question_id: 1, grade: 4, feedback: "good")
StudentQuestion.create(student_id: 2, question_id: 2, grade: 4, feedback: "good")
StudentQuestion.create(student_id: 1, question_id: 2, grade: 4, feedback: "good")

