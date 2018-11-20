class UsersController < ApplicationController
  def new

  end

  def create
    User.create(post_params_signup)
    #username: params[:username], password: params[:password], email: params[:eamil]
  end

  private

  def post_params_signup
    params.require(:username).permit(:password, :email)
  end
end
