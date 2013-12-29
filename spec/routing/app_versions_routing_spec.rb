require "spec_helper"

describe AppVersionsController do
  describe "routing" do

    it "routes to #index" do
      get("/app_versions").should route_to("app_versions#index")
    end

    it "routes to #new" do
      get("/app_versions/new").should route_to("app_versions#new")
    end

    it "routes to #show" do
      get("/app_versions/1").should route_to("app_versions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/app_versions/1/edit").should route_to("app_versions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/app_versions").should route_to("app_versions#create")
    end

    it "routes to #update" do
      put("/app_versions/1").should route_to("app_versions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/app_versions/1").should route_to("app_versions#destroy", :id => "1")
    end

  end
end
