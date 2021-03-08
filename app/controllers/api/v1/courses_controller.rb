module Api
module V1

class CoursesController<ApplicationController

def index

@courses= Course.order("created_at DESC");
render json: {status: "SUCCESS",message: "Loaded Courses",data:@courses},status: :ok
end


def show
@course=Course.find(params[:id])
render json: {status: "SUCCESS",message: "Loaded Courses",data:@course},status: :ok

end


def create
@course=Course.new(course_params)

if @course.save
  render json: {status: "SUCCESS",message: "Saved Courses",data:@course},status: :ok
else
render json: {status: "ERROR",message: "Course was not saved",
  data:@course.errors},status: :unprocessable_entity
end
end

def update
@course=Course.find(params[:id])

if @course.update_attributes(course_params)
  render json: {status: "SUCCESS",message: "Updated Course",data:@course},status: :ok
else
render json: {status: "ERROR",message: "Course was not updated",
  data:@course.errors},status: :unprocessable_entity
end
end

def destroy
  @course=Course.find(params[:id])
  @course.destroy
  render json: {status: "SUCCESS",message: "course deleted",data:@course},status: :ok
end



private

def course_params
params.permit(:name,:number_of_lessons,
  :lesson_completed,:hours_needed,:hours_spend)

end



end
end
end
