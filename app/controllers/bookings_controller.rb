class BookingsController < ApplicationController
  before_action :find_booking, only: %i[destroy show]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @booking = Booking.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @student = Student.find(params[:student_id])
    # @user = User.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.teacher_id = @teacher.id
    @booking.student_id = 1
    # @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
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
    params.require(:booking).permit(:student_id, :teacher_id, :online, :place, :status, :date, :time_starting, :time_ending, :rating_student, :cost)
  end
end
