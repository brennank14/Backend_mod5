class Api::V1::TeacherAuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
 
    def create
      @teacher = Teacher.find_by(username: teacher_login_params[:username])
      if @teacher && @teacher.authenticate(teacher_login_params[:password])
        token = encode_token({ teacher_id: @teacher.id })
        render json: { teacher: TeacherSerializer.new(@teacher), token: token }, status: :accepted
      else
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def teacher_login_params
      params.require(:teacher).permit(:username, :password, :user_type)
    end
  end


