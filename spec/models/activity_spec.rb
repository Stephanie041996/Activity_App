require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:group) { Activity.reflect_on_association(:group).macro }
  let(:author) { Activity.reflect_on_association(:author).macro }

  it 'checks if the Activity belongs_to the user' do
    expect(author).to eq(:belongs_to)
  end

  it 'checks if the Activity belongs_to the group' do
    expect(group).to eq(:belongs_to)
  end

  context 'validation test' do
    it 'activity name is present' do
      activity = Activity.new().save
      expect(activity).to eq(false)
    end

    it  'makes sure maxinim length is 15' do
      activity = Activity.new(name: 'Fun at the park lunch break').save
      expect(activity).to eq(false)
         
    end
  
   
    it 'should save successfully' do
      activity1 = Activity.new(name: 'Test name').save
      expect(activity1) == true
    end
  end
end