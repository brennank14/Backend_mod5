class QuestionsController < ApplicationController

    def index
        questions = Question.all 
        render json: questions
    end


    def show
        question = Question.find(params[:id])
        render json: question
    end


    def create
        question = Question.create(question_params)
        teacher = Teacher.find(params[:teacher_id])
        studentsArr = teacher.students
        studentsArr.map { |student| StudentQuestion.create(student_id: teacher.students.first.id, question_id: question.id, grade: nil, graded: false, feedback: '', answer: '')}
        render json: question
    end
  

    def update
      question = Question.find(params[:id])
      question.update_attributes(question_params)
      render json: question
    end
  

    def destroy
      question = Question.find(params[:id])
      question.destroy
      head :no_content, status: :ok
      render json: question
    end

    private
        def question_params
            params.require(:question).permit(:name, :content, :teacher_id, :points)
        end

        # def student_question_params
        #     params.require(:student_question).permit(:student_id, :question_id, :grade, :graded, :feedback, :answer)
        # end
end
