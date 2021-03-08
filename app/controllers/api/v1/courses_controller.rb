module Api
module V1

class CoursesController<ApplicationController

def index

@courses= Course.order("created_at DESC");
render json: {status: "SUCCESS",message: "Loaded Courses",data:@courses},status: :ok
end


end


end
end
