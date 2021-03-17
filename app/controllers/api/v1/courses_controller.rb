module Api
  module V1
    class CoursesController < ApplicationController

      before_action :authorized

      def index
        @courses = Course.all.order("created_at DESC").where(user_id: @user.id)
        render json: { courses: @courses }, status: :ok
      end

      def show
        @course = Course.find(params[:id])
        render json: { course: @course }, status: :ok
      end

      def create
        @course = Course.new(course_params)
        @course.user_id = @user.id

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
