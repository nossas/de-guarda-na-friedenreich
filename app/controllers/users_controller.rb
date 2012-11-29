class UsersController < ApplicationController
  inherit_resources
  before_filter :redirect_to_auth
  
  def index
    @users = User.limit(36)
    index!
  end

  def new
    new! { root_path } 
  end

  def create
    @user = User.find_by_email(params[:user][:email]) || User.create(params[:user])
    self.current_user = @user
    create!
  end

  def redirect_to_auth
    if params[:user] and !params[:user][:phone].nil?
      session[:phone] = params[:user][:phone]
      redirect_to facebook_auth_path
    end
  end

  def notify
    UserMailer.notify_from(current_user).deliver
    redirect_to root_path
  end


  def list
    @users = User.find(:all)
    return render 'list'
  end
end
