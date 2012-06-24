require "spec_helper"

describe ModifiersController do
  describe "routing" do

    it "routes to #index" do
      get("/modifiers").should route_to("modifiers#index")
    end

    it "routes to #new" do
      get("/modifiers/new").should route_to("modifiers#new")
    end

    it "routes to #show" do
      get("/modifiers/1").should route_to("modifiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/modifiers/1/edit").should route_to("modifiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/modifiers").should route_to("modifiers#create")
    end

    it "routes to #update" do
      put("/modifiers/1").should route_to("modifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/modifiers/1").should route_to("modifiers#destroy", :id => "1")
    end

  end
end
