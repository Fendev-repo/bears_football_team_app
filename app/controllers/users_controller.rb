class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_active_players
  
  def index
    @active_players = find_active_players
  end


  private
    def find_active_players
      User.all.map { |user| user.profile.active_player == true }
    end
end
