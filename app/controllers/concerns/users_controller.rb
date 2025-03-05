class UsersController < ApplicationController
def new
  @user = User.new
  #render plain: "This is the new user form."
end
def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice]= "User #{@user.username} signed up sucessfully for alpha blog"
    redirect_to articles_path
  else
    render 'new'
  end
end
end
private
def user_params
 params.require(:user).permit(:username, :email, :password)
end
