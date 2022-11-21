class WaldoLocationsController < ApplicationController
  def index
    @locations = WaldoLocation.all 
    render json: @locations
  end

  def create
    @location = WaldoLocation.create(location_params)
    render json: @locations
  end

  # nerd: 1443, 1487, 769, 850 
  # wizard: 178, 231, 1406, 1474 
  # reverse waldo: 932, 959, 1191, 1233 
  # waldo: 2537, 2622, 1349, 1462 

WaldoLocation.create({ :waldo1_x1 => 1443, :waldo1_x2 => 1487, :waldo1_y1 => 769, :waldo1_y2 => 850, 
                    :waldo2_x1 => 178, :waldo2_x2 => 231, :waldo2_y1 => 1406, :waldo2_y2 => 1474, 
                    :waldo3_x1 => 932, :waldo3_x2 => 959, :waldo3_y1 => 1191, :waldo3_y2 => 1233, 
                    :waldo4_x1 => 2537, :waldo4_x2 => 2622, :waldo4_y1 => 1349, :waldo4_y2 => 1462})
  private 
    def location_params
      params.require(:location).permit(:waldo1_x1, :waldo1_x2, :waldo1_y1, :waldo1_y2, 
                                       :waldo2_x1, :waldo2_x2, :waldo2_y1, :waldo2_y2,
                                       :waldo3_x1, :waldo3_x2, :waldo3_y1, :waldo3_y2,
                                       :waldo4_x1, :waldo4_x2, :waldo4_y1, :waldo4_y2)
    end
end
