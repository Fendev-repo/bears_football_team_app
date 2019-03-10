class ProfilesController < ApplicationController
  before_action :set_profile

  def show
  end

  def new
    @profile = current_user.build_profile
  end

  def edit
    @profile = current_user.profile
  end

  def create
    profile = current_user.create_profile(profile_params)

    if profile.save
      redirect_to profile_path(current_user.id) 
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path(current_user.id), notice: "Profile was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def profile_params
      params.require(:profile).permit(:image, :background)
    end

    def set_profile
      @profile = current_user.profile
    end
end