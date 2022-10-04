class TeachersController < ApplicationController
  before_action :find_teacher, only: %i[destroy show]
  def index
    if params[:subject] == "Matematicas"
      @teachers = Teacher.where(subject: "Matematicas")
    elsif params[:subject] == "Programacion"
      @teachers = Teacher.where(subject: "Programacion")
    elsif params[:subject] == "Ingles"
      @teachers = Teacher.where(subject: "Ingles")
    elsif params[:subject] == "Español"
      @teachers = Teacher.where(subject: "Español")
    else
      @teachers = Teacher.all
    end
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy
    redirect_to list_path(@teacher.list), status: :see_other
  end

  private

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:phone_number, :description, :time_cost_per_hour, :rating)
  end
end
