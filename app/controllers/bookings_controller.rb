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
    @booking = Booking.new(booking_params)
    @booking.teacher = @teacher
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to list_path(@booking.list), status: :see_other
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:online, :place, :date, :time_starting, :time_ending)
  end
end
