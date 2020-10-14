class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    #binding.pry
    @student = Student.create(first_name: params[:first_name],last_name:params[:last_name])
    #@student.first_name = params[:student][:first_name]
    #@student.last_name = params[:student][:last_name]
    #@student.save
    redirect_to student_path(@student)
  end

end
