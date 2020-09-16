class TeachersController < ApplicationController
    def index
        teachers = Teacher.all 
        render json: teachers 
    end

    def show
        teacher = Teacher.all.find(params[:id])
        render json: user 
    end
end
