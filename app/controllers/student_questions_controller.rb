class StudentQuestionsController < ApplicationController
    
    def index
        student_questions = StudentQuestion.all 
        render json: student_questions
    end


    def show
        student_question = StudentQuestion.find(params[:id])
        render json: student_question
    end
  

    def update
        student_question = StudentQuestion.find(params[:id])
        student_question.update_attributes(student_question_params)
      render json: student_question
    end
  

    def destroy
        student_question = StudentQuestion.find(params[:id])
        student_question.destroy
      head :no_content, status: :ok
      render json: student_question
    end

    private
        def student_question_params
            params.require(:student_question).permit(:student_id, :question_id, :grade, :feedback, :answer)
        end
end
