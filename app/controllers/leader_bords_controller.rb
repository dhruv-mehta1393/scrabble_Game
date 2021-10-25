class LeaderBordsController < ApplicationController
  def index
   user_ids = User.joins(:game_users).group('users.id').having("count(game_users.id)>=10")
  	@users = User.where(id:user_ids).includes(:game_users).order("game_users.score desc").limit(10)
  end
end
