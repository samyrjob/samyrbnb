class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    if params[:query].present?
      sql_query = <<~SQL
      flats.town ILIKE :query
      OR flats.name ILIKE :query
      OR users.first_name ILIKE :query
      OR users.last_name ILIKE :query
    SQL
      @flats = Flat.joins(:owner).where(sql_query, query: "%#{params[:query]}%")
    else
      @flats = Flat.all
    end

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: {flat: flat}),
        image_url: helpers.asset_url("home-1.png")
      }
    end

  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @flats = Flat.all


    @markers = @flats.geocoded.map do |flat|
      if flat = @flat
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: {flat: flat}),
        image_url: helpers.asset_url("home-1.png")
      }
      end
    end

  end


  def new
    @flat = Flat.new
  end


  private

  def flat_params
    params.require(:flat).permit(:name, :description, :price_per_day, :town, :photo)
  end

end
