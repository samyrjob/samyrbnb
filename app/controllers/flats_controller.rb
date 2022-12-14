class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @flats = Flat.all
  end

  def show
  end 

end
