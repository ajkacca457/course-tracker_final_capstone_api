module Api
  module V1
    class CoursesController < ApplicationController

      def index
        @courses = Course.all
        render json: { courses: @courses }, status: :ok
      end

      def show
        @course = Course.find(params[:id])
        render json: { course: @course }, status: :ok
      end

      def create
        @course = Course.new(course_params)

        if @course.save
          render json: { course: @course }, status: :ok
        else
          render json: { error: @course.errors }, status: :unprocessable_entity
        end
      end

      def update
        @course = Course.find(params[:id])

        if @course.update_attributes(course_params)
          render json: { course: @course }, status: :ok
        else
          render json: { error: @course.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @course = Course.find(params[:id])
        @course.destroy
        render json: { course: @course }, status: :ok
      end

      private

      def course_params
        params.permit(:name, :number_of_lessons,
                      :lesson_completed, :hours_needed, :hours_spend)
      end
    end
  end
end
