# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one :profile, dependent: :destroy

  def to_s
    "#{last_name.capitalize}, #{first_name.capitalize}"
  end

  def empty_profile? 
    self.profile[:background].nil? || 
    self.profile[:image].nil?
  end

  def player_active?
    self.profile[:active_player]
  end
end