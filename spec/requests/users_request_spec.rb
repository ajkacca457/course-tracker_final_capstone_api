require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'creates a user if given valid params' do
    post '/api/v1/users', params: { name: 'test_user', username: 'test_user',
                                    password: '123456', email: 'test_user@gmail.com' }
    expect(response).to have_http_status(:ok)
  end

  it 'creates a new session if user exists' do
    post '/api/v1/login', params: { username: 'test_user', password: '123456' }
    expect(response).to have_http_status :ok
  end
end
