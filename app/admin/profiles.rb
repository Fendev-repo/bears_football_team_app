# frozen_string_literal: true

ActiveAdmin.register Profile, as: "Player Profiles" do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :background, :active_player, :start_date,
                :image, :pb_bench_press, :pb_100mtr_sprint,
                :pb_squat_weight, :height, :weight,
                :current_postion, :user_id

  scope :active_players
  scope :not_yet_active_players

  index do
    selectable_column
    column :player_name do |profile|
      "#{User.find_by(id: profile.user_id)}"
    end
    column :current_postion
    column :active_player
    column :image
    actions
  end
end
