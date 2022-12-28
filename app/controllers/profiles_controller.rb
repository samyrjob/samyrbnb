class ProfilesController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @flats = Flat.where(owner: current_user)
    # @flats = @user.
    @bookings = @user.bookings

    @reservations = Booking.includes(:flat).where(flats: { owner: @user })
  end

  private

  def set_user
    @user = current_user
  end


end
