require 'spec_helper'
require 'rails_helper'

RSpec.describe BoardsController, :type => :controller do
  before(:each) do
    @user = FactoryGirl.create(:user, email: 'test@test.com')
    sign_in @user
  end

  describe "POST #create" do
    it "should create board with parameters" do
      params = {
        board: {
          name: 'Test1'
        }
      }
      put :create, params
      expect(Board.count).to eql(1)
      expect(Board.first.name).to eql('Test1')
      expect(response).to redirect_to '/'
    end

    it "should not redirect if there are errors saving the board" do
      params = {
        board: {
          name: ''
        }
      }

      put :create, params
      expect(Board.count).to eql(0)
    end
  end
end