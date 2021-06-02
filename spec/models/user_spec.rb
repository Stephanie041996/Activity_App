require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'user') }
  let(:activities) { User.reflect_on_association(:activities).macro }
  let(:groups) { User.reflect_on_association(:groups).macro }

  it 'checks and validates user' do
    @user = User.create(name: 'user')
    expect(@user).to be_valid
  end

  it 'checks if activities association is has_many' do
    expect(activities).to eq(:has_many)
  end

  it 'checks if group association is :has_many' do
    expect(groups).to eq(:has_many)
  end

  context 'validation test' do
    it 'user name is present' do
      user = User.new.save
      expect(user).to eq(false)
    end

    it 'makes sure the minimum length of name is at least 3' do
      user = User.new(name: 'ki').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(name: 'User1').save
      expect(user) == true
    end
  end
end
