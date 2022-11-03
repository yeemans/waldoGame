class WaldoLocationsController < ApplicationController
  def index
    @locations = WaldoLocation.all 
    render json: @locations
  end

  def create
    @location = WaldoLocation.create(location_params)
    render json: @locations
  end

  # pikachu: 822, 848, 272, 304 
  # magnezone: 379, 435, 538, 587 
  # beldum: 670, 697, 604, 631 

#  WaldoLocation.create({ :waldo1_x1 => 822, :waldo1_x2 => 848, :waldo1_y1 => 272, :waldo1_y2 => 304, 
 #                   :waldo2_x1 => 379, :waldo2_x2 => 435, :waldo2_y1 => 538, :waldo2_y2 => 587, 
  #                  :waldo3_x1 => 670, :waldo3_x2 => 697, :waldo3_y1 => 604, :waldo3_y2 => 631 })
  private 
    def location_params
      params.require(:location).permit(:waldo1_x1, :waldo1_x2, :waldo1_y1, :waldo1_y2, 
                                       :waldo2_x1, :waldo2_x2, :waldo2_y1, :waldo2_y2,
                                       :waldo3_x1, :waldo3_x2, :waldo3_y1, :waldo3_y2,)
    end
end
