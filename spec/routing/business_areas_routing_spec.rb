require "spec_helper"

describe BusinessAreasController do
  describe "routing" do

    it "routes to #index" do
      get("/business_areas").should route_to("business_areas#index")
    end

    it "routes to #new" do
      get("/business_areas/new").should route_to("business_areas#new")
    end

    it "routes to #show" do
      get("/business_areas/1").should route_to("business_areas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/business_areas/1/edit").should route_to("business_areas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/business_areas").should route_to("business_areas#create")
    end

    it "routes to #update" do
      put("/business_areas/1").should route_to("business_areas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/business_areas/1").should route_to("business_areas#destroy", :id => "1")
    end

  end
end
