class StudentsController < ApplicationController
  before_action :find_student, only: %i[destroy show]
  def index
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:phone_number, :description)
  end
end
