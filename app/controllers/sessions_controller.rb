# coding: utf-8
class SessionsController < ApplicationController
  def create
    if auth_hash
      hash = auth_hash 
      self.current_user = User.find_or_create_by_uid(hash[:uid], email: hash[:info][:email], name: hash[:info][:name], avatar: hash[:info][:image], mobile_phone: session[:phone])
    else
      self.current_user = User.find_or_create_by_email(params[:user])
    end

    Koala::Facebook::API.new(hash[:credentials][:token]).put_connections("me", "links", :link => "http://deguarda.meurio.org.br/", :message => "Acabo de me tornar um guardião da Friedenreich: Seja um você também!")
      
    return redirect_to root_path
  end


  def auth_hash
    request.env['omniauth.auth']
  end
end
