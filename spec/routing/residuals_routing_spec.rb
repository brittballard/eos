require "spec_helper"

describe ResidualsController do
  describe "routing" do

    it "routes to #index" do
      get("/residuals").should route_to("residuals#index")
    end

    it "routes to #new" do
      get("/residuals/new").should route_to("residuals#new")
    end

    it "routes to #show" do
      get("/residuals/1").should route_to("residuals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/residuals/1/edit").should route_to("residuals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/residuals").should route_to("residuals#create")
    end

    it "routes to #update" do
      put("/residuals/1").should route_to("residuals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/residuals/1").should route_to("residuals#destroy", :id => "1")
    end

  end
end
