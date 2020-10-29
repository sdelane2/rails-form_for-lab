class StudentsController < ApplicationController
    def index
    end
    
    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new 
    end

    def create
        strong_params = params.require(:student).permit!
        @student = Student.new(strong_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit 
        @student = Student.find(params[:id])
    end

    def update
        strong_params = params.require(:student).permit!
        @student = Student.update(strong_params)
        redirect_to student_path(@student)
    end

end