require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:activities) { Group.reflect_on_association(:activities).macro }
  let(:user) { Group.reflect_on_association(:user).macro }

  it 'checks if the Group belongs_to the user' do
    expect(user).to eq(:belongs_to)
  end

  it 'checks if the Activity belongs_to the group' do
    expect(activities).to eq(:has_many)
  end

  context 'validation test' do
    it 'group name is present' do
      group = Group.new().save
      expect(group).to eq(false)
    end
  
   
    it 'should save successfully' do
      group1 = Group.new(name: 'Test name').save
      expect(group1) == true
    end
  end
end