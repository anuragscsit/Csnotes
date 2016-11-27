class SemesterController < ApplicationController
	before_filter :authenticate_user!
	def index
		@semester = Semester.all
		
	end
end
