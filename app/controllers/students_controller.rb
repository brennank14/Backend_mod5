class StudentsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        students = Student.all 
        render json: students 
    end

    def show
        student = Student.all.find(params[:id])
        render json: student
    end

 
    def create
      @student = Student.create(student_params)
      if @student.valid?
        @token = encode_token(student_id: @student.id)
        render json: { student: StudentSerializer.new(@student), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create student' }, status: :not_acceptable
      end
    end
   
    private
   
    def user_params
        params.require(:student).permit(:username, :password, :name, :user_type).with_defaults(user_type: student)
    end

end
