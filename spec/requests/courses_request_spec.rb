require 'rails_helper'

RSpec.describe 'Courses', type: :request do
  before(:example) do
    @user = User.create(name: 'test_user', username: 'test_user',
                        password: '123456', email: 'test_user@gmail.com')
    token = JWT.encode({ user_id: @user.id }, 'yourSecret')
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'shows all courses' do
    get '/api/v1/courses', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'creates a course' do
    post '/api/v1/courses',
         params: { name: 'Test Title', number_of_lessons: 50,
                   lesson_completed: 10, hours_needed: 100, hours_spend: 10 },
         headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'updates a course' do
    course = @user.courses.create(name: 'Test Title',
                                  number_of_lessons: 50, lesson_completed: 10, hours_needed: 100,
                                  hours_spend: 10)
    put "/api/v1/courses/#{course.id}",
        params: { name: 'Test Title1', number_of_lessons: 50,
                  lesson_completed: 10, hours_needed: 100, hours_spend: 10 },
        headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'shows course info' do
    course = @user.courses.create(name: 'Test Title', number_of_lessons: 50,
                                  lesson_completed: 10, hours_needed: 100, hours_spend: 10)
    get "/api/v1/courses/#{course.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'delete course info' do
    course = @user.courses.create(name: 'Test Title', number_of_lessons: 50,
                                  lesson_completed: 10, hours_needed: 100, hours_spend: 10)
    delete "/api/v1/courses/#{course.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end
