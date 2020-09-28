class StudentAuthController < ApplicationController

 
    def create
      @student = Student.find_by(username: student_login_params[:username])
      if @student && @student.authenticate(student_login_params[:password])
        token = encode_token({ student_id: @student.id })
        render json: { student: StudentSerializer.new(@student), token: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def student_login_params
      params.require(:student).permit(:username, :password, :user_type)
    end
  end

