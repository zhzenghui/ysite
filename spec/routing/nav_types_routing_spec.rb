require "spec_helper"

describe NavTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/nav_types").should route_to("nav_types#index")
    end

    it "routes to #new" do
      get("/nav_types/new").should route_to("nav_types#new")
    end

    it "routes to #show" do
      get("/nav_types/1").should route_to("nav_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nav_types/1/edit").should route_to("nav_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nav_types").should route_to("nav_types#create")
    end

    it "routes to #update" do
      put("/nav_types/1").should route_to("nav_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nav_types/1").should route_to("nav_types#destroy", :id => "1")
    end

  end
end
