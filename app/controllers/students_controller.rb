class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students 
    end

    def show
        student = User.all.find(params[:id])
        render json: user 
    end

end
