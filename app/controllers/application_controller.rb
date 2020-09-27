class ApplicationController < ActionController::API
    include ::ActionController::Serialization
        #before_action :authorized
        def encode_token(payload)
          JWT.encode(payload, 'my_s3cr3t')
        end
       
        def auth_header
          request.headers['Authorization']
        end
       
        def decoded_token
          if auth_header
            token = auth_header.split(' ')[1]
            begin
              JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
              nil
            end
          end
        end

        def current_user
            if decoded_token
                if decoded_token[0].include?('student_id')
                    student_id = decoded_token[0]['student_id']
                    @student = Student.find_by(id: student_id)
                    render json: { student: StudentSerializer.new(@student) }, status: :accepted
                elsif decoded_token[0].include?('teacher_id')
                    teacher_id = decoded_token[0]['teacher_id']
                    @teacher = Teacher.find_by(id: teacher_id)
                    render json: { teacher: TeacherSerializer.new(@teacher) }, status: :accepted
                end
            end
          end
         
          def logged_in?
            !!current_user
          end

          def authorized
            render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
          end
end
