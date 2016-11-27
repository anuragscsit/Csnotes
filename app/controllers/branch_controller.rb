class BranchController < ApplicationController
	before_filter :authenticate_user!
	def index
		@branch = Branch.all;

		
	end
end
