require 'rails_helper'

RSpec.feature "SignIns", type: :feature do
  let(:user) { FactoryBot.create(:user) }

  scenario 'user successfully signs in' do

    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('Bears Football Club')
  end
end
