require 'rails_helper'
RSpec.describe Tracker, type: :model do
  context 'Association Test' do
    it 'belongs to users' do
      expect(Tracker.reflect_on_association(:user).macro).to be :belongs_to
    end
    it 'has one tracker' do
      expect(Tracker.reflect_on_association(:course).macro).to be :belongs_to
    end
  end
end
