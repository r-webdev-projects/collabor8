class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(user_params)
  		flash[:success] = "Profile updated"
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end

  private

  	def user_params
  		params.require(:user).permit(:email, :first_name, :last_name, :location, 
  																 :password, :password_confirmation)
  	end
end
