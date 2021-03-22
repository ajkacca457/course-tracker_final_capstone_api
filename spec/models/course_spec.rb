require 'rails_helper'
RSpec.describe Course, type: :model do
  let(:name_invalid) do
    Course.new(number_of_lessons: 20,
               lesson_completed: 10,
               hours_needed: 20,
               hours_spend: 10)
  end
  let(:number_of_lessons_invalid) do
    Course.new(name: 'testcourse',
               lesson_completed: 10,
               hours_needed: 20,
               hours_spend: 10)
  end
  let(:lesson_completed_invalid) do
    Course.new(name: 'testcourse',
               number_of_lessons: 20,
               hours_needed: 20,
               hours_spend: 10)
  end
  let(:hours_needed_invalid) do
    Course.new(name: 'testcourse',
               number_of_lessons: 20, lesson_completed: 10, hours_spend: 10)
  end
  let(:hours_spend_invalid) do
    Course.new(name: 'testcourse',
               number_of_lessons: 20, lesson_completed: 10, hours_needed: 20)
  end

  context 'Association Test' do
    it 'has one user' do
      expect(Course.reflect_on_association(:user).macro).to be :has_one
    end
    it 'has one tracker' do
      expect(Course.reflect_on_association(:tracker).macro).to be :has_one
    end
  end

  context 'Validations tests' do
    it 'return false if name is invalid or not given' do
      expect(name_invalid.valid?).to eq(false)
    end

    it 'Returns false when the number of lessons is not present' do
      expect(number_of_lessons_invalid.valid?).to eq(false)
    end

    it 'Returns false when the lessons completed is not present' do
      expect(lesson_completed_invalid.valid?).to eq(false)
    end

    it 'Returns false when hours needed is not given' do
      expect(hours_needed_invalid.valid?).to eq(false)
    end

    it 'Returns false when hours spend is not given' do
      expect(hours_spend_invalid.valid?).to eq(false)
    end
  end
end
