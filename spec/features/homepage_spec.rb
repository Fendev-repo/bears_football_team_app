# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Homepages", type: :feature do
  scenario "testing capybara is all connected correctly on homepage" do
    visit root_path
    expect(page).to have_content "FenDev Application"
  end
end
