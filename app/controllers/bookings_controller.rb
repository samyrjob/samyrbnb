class BookingsController < ApplicationController



  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.renter = current_user # user est associé à la création du booking (renter vient de la db)
    @booking.flat = @flat # de la show du dragon, tu récupere id de la foreign key
    @booking.status = "pending"
    if @booking.end_date && @booking.start_date
    @miliseconds1 = @booking.end_date.strftime('%Q')
    @miliseconds2 = @booking.start_date.strftime('%Q')
    @miliseconds = @miliseconds1.to_i - @miliseconds2.to_i
    @days = @miliseconds / 86400000
    @booking.price = @flat.price_per_day * @days
    end


    if @booking.save
      redirect_to booking_path(@booking), notice: "Your location's request has been confirmed"
    else
      render "flats/show", status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flat = @booking.flat
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)   # A configurer plutard
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end



end
