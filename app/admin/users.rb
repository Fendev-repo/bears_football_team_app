# frozen_string_literal: true

ActiveAdmin.register User, as: "Players" do
  permit_params :first_name, :last_name, :email, :active_player

  filter :first_name
  filter :last_name

  index do
    selectable_column
    column :first_name
    column :last_name
    column :email
    column :profile do |user|
      link_to "#{user.first_name.capitalize}'s profile", admin_player_profile_path(user.id)
    end
    column :active_player do |user|
      "#{user.profile[:active_player]}".capitalize
    end
    actions
  end
end
