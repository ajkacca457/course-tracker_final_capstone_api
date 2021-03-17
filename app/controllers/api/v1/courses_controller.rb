module Api
  module V1
    class CoursesController < ApplicationController
      before_action :authorized

      def index
        @courses = logged_in_user.courses
        render json: { courses: @courses }, status: :ok
      end

      def show
        @course = logged_in_user.courses.find(params[:id])
        render json: { course: @course }, status: :ok
      end

      def create
        @course = logged_in_user.courses.build(course_params)
        if @course.save
          render json: { course: @course }, status: :ok
        else
          render json: { error: @course.errors }, status: :unprocessable_entity
        end
      end

      def update
        @course = logged_in_user.courses.find(params[:id])

        if @course.update_attributes(course_params)
          render json: { course: @course }, status: :ok
        else
          render json: { error: @course.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @course = logged_in_user.courses.find(params[:id])
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
