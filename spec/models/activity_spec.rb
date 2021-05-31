require 'rails_helper'

RSpec.describe Activity, type: :model do
 
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