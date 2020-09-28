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


Question.create(name: "Centriod Construction", content: "Define 'median'. 1) Construct a trignale of choice using the sketchpad. \n2) Construct the three medians of the triangle.", teacher_id: 1, points: 5)
Question.create(name: "Circumcenter Construction", content: "1) Construct the triangle of your choice using the sketchpad. \n2) Construct the perpensicular bicestor to each side of the triangle. \n3) Construct a circle, using the point of concurrency as the center. \nWhat do you notie about the relationship between the triangle and the circle? ", teacher_id: 1, points: 5)
Question.create(name: "Incenter Construction", content: "1) Construct a triangle of your choice. \n2) From each vertex, construct an angle bisector. Make sure it intersects with the opposite side of the triangle. \n3) Construct a circle, using the point of concurrency as the center. \nWhat do you notice about the relationship between the triangle and the circle?", teacher_id: 2, points: 5)
Question.create(name: "Orthocenter Construction", content: "Define 'orthocenter'. \n1) Construct a triangle of your choice in the sketchpad. \n2) from each vertex, construct a perpendicular line to the opposite side.", teacher_id: 2, points: 5)
Question.create(name: "Centriod Construction", content: "Define 'median'. \n1) Construct a trignale of choice using the sketchpad. \n2) Construct the three medians of the triangle.", teacher_id: 2, points: 5)
Question.create(name: "Circumcenter Construction", content: "1) Construct the triangle of your choice using the sketchpad. \n2) Construct the perpensicular bicestor to each side of the triangle. \n3) Construct a circle, using the point of concurrency as the center. \nWhat do you notie about the relationship between the triangle and the circle? ", teacher_id: 2, points: 5)
Question.create(name: "Incenter Construction", content: "1) Construct a triangle of your choice. \n2) From each vertex, construct an angle bisector. Make sure it intersects with the opposite side of the triangle. \n3) Construct a circle, using the point of concurrency as the center. \nWhat do you notice about the relationship between the triangle and the circle?", teacher_id: 1, points: 5)
Question.create(name: "Orthocenter Construction", content: "Define 'orthocenter'. \n1) Construct a triangle of your choice in the sketchpad. \n2) from each vertex, construct a perpendicular line to the opposite side.", teacher_id: 1, points: 5)

StudentQuestion.create(student_id: 1, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 1, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 2, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 2, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 3, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 3, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 4, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 4, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 5, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 5, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 6, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 6, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 1, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 1, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 2, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 2, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 3, question_id: 3, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 3, question_id: 4, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 4, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 4, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 5, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 5, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 6, question_id: 1, grade: nil, feedback: nil, answer: nil, graded: false)
StudentQuestion.create(student_id: 6, question_id: 2, grade: nil, feedback: nil, answer: nil, graded: false)