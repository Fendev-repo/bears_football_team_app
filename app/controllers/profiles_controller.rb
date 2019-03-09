class ProfilesController < ApplicationController
  before_action :set_profile

  def show
  end

  def edit
  end

  private
    def set_profile
      @profile = current_user.profile
    end
end
