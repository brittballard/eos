require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe 'post Calculate' do
    it 'render the calculate view with a list of payments' do
      
    end
  end

end
