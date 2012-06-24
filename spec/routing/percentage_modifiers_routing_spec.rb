require "spec_helper"

describe PercentageModifiersController do
  describe "routing" do

    it "routes to #index" do
      get("/percentage_modifiers").should route_to("percentage_modifiers#index")
    end

    it "routes to #new" do
      get("/percentage_modifiers/new").should route_to("percentage_modifiers#new")
    end

    it "routes to #show" do
      get("/percentage_modifiers/1").should route_to("percentage_modifiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/percentage_modifiers/1/edit").should route_to("percentage_modifiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/percentage_modifiers").should route_to("percentage_modifiers#create")
    end

    it "routes to #update" do
      put("/percentage_modifiers/1").should route_to("percentage_modifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/percentage_modifiers/1").should route_to("percentage_modifiers#destroy", :id => "1")
    end

  end
end
