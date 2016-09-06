class DynamicPagesController < ApplicationController
	def index
		@latest_trees = Course.all.order(updated_at: :desc).limit(3)
	end

private 
def course_params 
		params.require(:course).permit(:title, :description, :points, :image)
end
