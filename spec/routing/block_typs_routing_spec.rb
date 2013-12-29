require "spec_helper"

describe BlockTypsController do
  describe "routing" do

    it "routes to #index" do
      get("/block_typs").should route_to("block_typs#index")
    end

    it "routes to #new" do
      get("/block_typs/new").should route_to("block_typs#new")
    end

    it "routes to #show" do
      get("/block_typs/1").should route_to("block_typs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/block_typs/1/edit").should route_to("block_typs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/block_typs").should route_to("block_typs#create")
    end

    it "routes to #update" do
      put("/block_typs/1").should route_to("block_typs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/block_typs/1").should route_to("block_typs#destroy", :id => "1")
    end

  end
end
