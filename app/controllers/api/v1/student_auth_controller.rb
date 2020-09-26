class Api::V1::StudentAuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      @student = Student.find_by(username: student_login_params[:username])
      #User#authenticate comes from BCrypt
      if @student && @student.authenticate(student_login_params[:password])
        # encode token comes from ApplicationController
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

