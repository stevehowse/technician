require "spec_helper"

describe UserreqsController do
  describe "routing" do

    it "routes to #index" do
      get("/userreqs").should route_to("userreqs#index")
    end

    it "routes to #new" do
      get("/userreqs/new").should route_to("userreqs#new")
    end

    it "routes to #show" do
      get("/userreqs/1").should route_to("userreqs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/userreqs/1/edit").should route_to("userreqs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/userreqs").should route_to("userreqs#create")
    end

    it "routes to #update" do
      put("/userreqs/1").should route_to("userreqs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/userreqs/1").should route_to("userreqs#destroy", :id => "1")
    end

  end
end
