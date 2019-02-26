require 'rails_helper'

RSpec.feature "SignUps", type: :feature do
  include ActiveJob::TestHelper

  scenario 'user successfully signs up' do
    visit root_path
    click_on "Sign up"
  end
end