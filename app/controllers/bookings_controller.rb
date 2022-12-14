class BookingsController < ApplicationController
  before_action :find_booking, only: %i[destroy]
  def index
    # @teacher = Teacher.find(params[:teacher_id])
    # @bookings.student = current_user.student
    @bookings = Booking.where(student_id: current_user.student)
  end

  def show
    # @teacher = Teacher.find(params[:teacher_id])
    # @bookings.student = current_user.student
    @booking = Booking.find(params[:id])
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    # @student = Student.find(params[:student_id])
    # @user = User.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.teacher_id = @teacher.id
    # @booking.student_id = current_user.id
    @booking.student = current_user.student
    @booking.cost = (@booking.time_ending - @booking.time_starting) * @teacher.time_cost_per_hour
    # @booking.student = current_user.student
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  # def booking_params
  #   params.require(:booking).permit(:online, :place, :date, :time_starting, :time_ending)
  # end
  def booking_params
    params.require(:booking).permit(:student_id, :teacher_id, :online, :place, :status, :date, :time_starting, :time_ending, :rating_student)
  end
end
