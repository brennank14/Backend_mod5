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
end
