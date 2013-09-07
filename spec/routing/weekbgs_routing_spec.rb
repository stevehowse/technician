require "spec_helper"

describe WeekbgsController do
  describe "routing" do

    it "routes to #index" do
      get("/weekbgs").should route_to("weekbgs#index")
    end

    it "routes to #new" do
      get("/weekbgs/new").should route_to("weekbgs#new")
    end

    it "routes to #show" do
      get("/weekbgs/1").should route_to("weekbgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weekbgs/1/edit").should route_to("weekbgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weekbgs").should route_to("weekbgs#create")
    end

    it "routes to #update" do
      put("/weekbgs/1").should route_to("weekbgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weekbgs/1").should route_to("weekbgs#destroy", :id => "1")
    end

  end
end
