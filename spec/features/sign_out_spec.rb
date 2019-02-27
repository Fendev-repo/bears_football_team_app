require 'rails_helper'

RSpec.feature "SignOuts", type: :feature do
  let(:user) { FactoryBot.create(:user) }

  scenario 'user successfully signs out' do

    sign_in user
    visit root_path
    click_link 'Sign out'

    expect(page).to have_content('Signed out successfully.')
    expect(page).to have_content('Sign in')
  end
end
