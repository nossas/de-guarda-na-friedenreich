require 'spec_helper'

describe UsersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end


  describe "POST 'create'" do
    before do 
      post :create, user: { email: 'test@test.com', name: 'test', mobile_phone: '(55) 9555-3133' }
    end
    it { should redirect_to users_path }
  end

end
