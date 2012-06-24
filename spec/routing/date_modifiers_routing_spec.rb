require "spec_helper"

describe DateModifiersController do
  describe "routing" do

    it "routes to #index" do
      get("/date_modifiers").should route_to("date_modifiers#index")
    end

    it "routes to #new" do
      get("/date_modifiers/new").should route_to("date_modifiers#new")
    end

    it "routes to #show" do
      get("/date_modifiers/1").should route_to("date_modifiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/date_modifiers/1/edit").should route_to("date_modifiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/date_modifiers").should route_to("date_modifiers#create")
    end

    it "routes to #update" do
      put("/date_modifiers/1").should route_to("date_modifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/date_modifiers/1").should route_to("date_modifiers#destroy", :id => "1")
    end

  end
end
