class LeaderboardController < ApplicationController
    def show
        @data = User.joins(:activities).group(:name).sum(:amount)
    end
end