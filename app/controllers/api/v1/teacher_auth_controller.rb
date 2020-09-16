class Api::V1::TeacherAuthController < ApplicationController
    def create
        
        teacher = Teacher.find_by(username: params[:username])
        
        if teacher && teacher.authenticate(params[:password])
            render json: teacher
        else
            render json: { error: 'Invalid Login Data.' }
        end

    end
end