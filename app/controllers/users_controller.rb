class UsersController < ApplicationController
  inherit_resources

  before_filter :redirect_to_auth

  def new
    new! { return render :index } 
  end

  def create
    @user = User.find_or_create_by_email(params[:user])
    create!
  end

  def redirect_to_auth
    if params[:user] and !params[:user][:phone].nil?
      session[:phone] = params[:user][:phone]
      redirect_to facebook_auth_path
    end
  end
end
