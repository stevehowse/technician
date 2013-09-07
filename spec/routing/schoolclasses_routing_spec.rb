require "spec_helper"

describe SchoolclassesController do
  describe "routing" do

    it "routes to #index" do
      get("/schoolclasses").should route_to("schoolclasses#index")
    end

    it "routes to #new" do
      get("/schoolclasses/new").should route_to("schoolclasses#new")
    end

    it "routes to #show" do
      get("/schoolclasses/1").should route_to("schoolclasses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/schoolclasses/1/edit").should route_to("schoolclasses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/schoolclasses").should route_to("schoolclasses#create")
    end

    it "routes to #update" do
      put("/schoolclasses/1").should route_to("schoolclasses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/schoolclasses/1").should route_to("schoolclasses#destroy", :id => "1")
    end

  end
end
