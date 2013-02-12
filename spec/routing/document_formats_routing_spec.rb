require "spec_helper"

describe DocumentFormatsController do
  describe "routing" do

    it "routes to #index" do
      get("/document_formats").should route_to("document_formats#index")
    end

    it "routes to #new" do
      get("/document_formats/new").should route_to("document_formats#new")
    end

    it "routes to #show" do
      get("/document_formats/1").should route_to("document_formats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/document_formats/1/edit").should route_to("document_formats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/document_formats").should route_to("document_formats#create")
    end

    it "routes to #update" do
      put("/document_formats/1").should route_to("document_formats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/document_formats/1").should route_to("document_formats#destroy", :id => "1")
    end

  end
end
