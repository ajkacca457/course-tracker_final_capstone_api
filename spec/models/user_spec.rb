require 'rails_helper'
RSpec.describe User, type: :model do
  let(:name_invalid) { User.new(username: 'testuser1', password: 'testuser1', email: 'testuser1@gmail.com') }
  let(:username_invalid) { User.new(name: 'testuser1', password: 'testuser1', email: 'testuser1@gmail.com') }
  let(:password_invalid) { User.new(name: 'testuser1', username: 'testuser1', email: 'testuser1@gmail.com') }
  let(:email_invalid) { User.new(name: 'testuser1', username: 'testuser1', password: 'testuser1') }

  context 'Association Test' do
    it 'has many trackers' do
      expect(User.reflect_on_association(:trackers).macro).to be :has_many
    end
    it 'has many courses' do
      expect(User.reflect_on_association(:courses).macro).to be :has_many
    end
  end

  context 'Validations tests' do
    it 'return false if name is invalid or not given' do
      expect(name_invalid.valid?).to eq(false)
    end

    it 'Returns false when the username is not present' do
      expect(username_invalid.valid?).to eq(false)
    end

    it 'Returns false when the password is not present' do
      expect(password_invalid.valid?).to eq(false)
    end

    it 'Returns false when email is not given' do
      expect(email_invalid.valid?).to eq(false)
    end
  end
end
