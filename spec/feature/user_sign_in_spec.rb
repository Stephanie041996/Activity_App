require 'rails_helper'
describe 'the signin process', type: :feature do
  before :each do
    User.create(name: 'jack')
  end

  it 'signs me in' do
    visit sessions_path
   
    fill_in 'login[name]', with: 'jack'

    click_button 'submit'
    expect(page).to have_content 'jack'
  end
end
