# frozen_string_literal: true

require "rails_helper"

RSpec.feature "SignOuts", type: :feature do
  let(:user) { FactoryBot.create(:user) }

  scenario "user successfully signs out" do
    sign_in user
    visit root_path
    click_link("Sign out", match: :first)
    expect(page).to have_content("Sign in")
  end
end
