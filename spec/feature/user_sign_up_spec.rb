require 'rails_helper'
describe 'the signup process', type: :feature do
  before :each do
    User.create(name: 'jack')
  end

  it 'signs me up' do
    visit users_path
   
    fill_in 'user[name]', with: 'jack'

    click_button 'submit'
    expect(page).to have_content 'SIGN UP'
  end
end
