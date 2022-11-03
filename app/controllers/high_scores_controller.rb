class HighScoresController < ApplicationController
  def index
    @scores = HighScore.all
    render json: @scores
  end

  def create
    @score = HighScore.create(tdlist_param)
    render json: @score
  end

  private
    def tdlist_param
      params.require(:high_score).permit(:user, :score)
    end
end
