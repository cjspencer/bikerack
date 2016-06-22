class RidersController < ApplicationController

  def show
    @rider = Rider.find_by ridername: params[:ridername]
  end

end
