class TeachersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def index
        teachers = Teacher.all 
        render json: teachers 
    end

    def show
        teacher = Teacher.find(params[:id])
        render json: teacher
    end


    def create
      @teacher = Teacher.create(teacher_params)
      if @teacher.valid?
        @token = encode_token(teacher_id: @teacher.id)
        render json: { teacher: TeacherSerializer.new(@teacher), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create teacher' }, status: :not_acceptable
      end
    end
   
    private
   
    def teacher_params
      params.require(:teacher).permit(:username, :password, :name, :user_type).with_defaults(user_type: teacher)
    end
end
