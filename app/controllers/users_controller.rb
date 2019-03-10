class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_active_players
  
  def index
  end

  def show
    @profile = current_user.build_profile
  end

  private
    def find_active_players
      @active_players = User.all.select { |user| user.profile }
    end
end
