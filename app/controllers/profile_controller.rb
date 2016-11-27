class ProfileController < ApplicationController
	before_filter :authenticate_user!
  def dashboard
  	if current_user.profile.nil?
      @profile = Profile.new(user_id: current_user.id)
      @profile.save(validate: false)

      #redirect_to edit_user_profile_path(user_id: current_user.id, profile_id: current_user.profile.id)
    else
      @profile = current_user.profile
      @user = current_user
      #redirect_to edit_user_profile_path(user_id: current_user.id, id: current_user.profile.id)
    end
  end
  def edit
  	@user = current_user
     @branch = Branch.all
     @session = Session.all
    @profile = current_user.profile
     @semester = Semester.all
  end
  def update
    @user = current_user
     @profile = Profile.find(params[:id])
    if @profile.update_attributes(profile_params)
      redirect_to :back, notice: 'Profile updated successfully.'
    else
      render 'edit'
    end
  end
  def show

    @user = current_user
   	@profile = current_user.profile
  end
    

  private
  def profile_params
   params.require(:profile).permit(:first_name,:last_name,:mobile_no,
   	:DOB,:sex,:eroll_no,:branch,:semester, :session, :sem, :father_name,:father_mobile_no,
    :p_address,:p_city,:p_state,:p_pincode,:c_address
    )
  end
end
