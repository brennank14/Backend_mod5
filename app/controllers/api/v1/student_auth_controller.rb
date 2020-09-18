class Api::V1::StudentAuthController < ApplicationController
    def create
        
        student = Student.find_by(username: params[:username])
        
        if student && student.authenticate(params[:password])
            render json: student
        else
            render json: { error: 'Invalid Login Data.' }
        end
    end
end