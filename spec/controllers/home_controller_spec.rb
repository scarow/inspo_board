require 'spec_helper'
require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  before(:each) do
    @user = FactoryGirl.create(:user, id: 1, email: 'test@test.com')
    sign_in @user
  end

  describe "index" do
    it "should return correct values belonging to signed in user" do
      # TODO: this should fail as we haven't implemented 
      # concept of boards belonging to users yet
      Board.create(name: 'test1', user_id: 1)
      Board.create(name: 'test2', user_id: 2)

      get :index
      expect(assigns(:data)['boards'].count).to eql(1)
    end
  end

end
