require "spec_helper"

describe NavgationsController do
  describe "routing" do

    it "routes to #index" do
      get("/navgations").should route_to("navgations#index")
    end

    it "routes to #new" do
      get("/navgations/new").should route_to("navgations#new")
    end

    it "routes to #show" do
      get("/navgations/1").should route_to("navgations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/navgations/1/edit").should route_to("navgations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/navgations").should route_to("navgations#create")
    end

    it "routes to #update" do
      put("/navgations/1").should route_to("navgations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/navgations/1").should route_to("navgations#destroy", :id => "1")
    end

  end
end
