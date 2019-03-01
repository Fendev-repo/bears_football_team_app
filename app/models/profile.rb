# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user

  attr_reader :active_player, :current_position

  scope :active_players, -> { where(active_player: true) }
  scope :not_yet_active_players, -> { where(active_player: false) }


  def to_s
    current_position
  end
end
