class HighScoresController < ApplicationController
  def index
    @scores = HighScore.all
    render json: @scores
  end

  def create
    @score = HighScore.create(tdlist_param)
    render json: @score
  end

  def show 
    render json: HighScore.find(params[:id])
  end

  def update 
    @score = HighScore.find(params[:id])
    @score.user = params[:high_score][:user]
    @score.user = params[:high_score][:score]
    @score.save! #update
  end

  def leaderboard 
    @scores = HighScore.where("score > ?", 0.0).order("score ASC") 
    render json: @scores
  end

  private
    def tdlist_param
      params.require(:high_score).permit(:user, :score)
    end
end
