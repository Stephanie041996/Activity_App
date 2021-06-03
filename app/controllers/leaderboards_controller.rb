class LeaderboardsController < ApplicationController
  def index
    @data = User.joins(:activities).group(:name).sum(:amount)
  end
end
