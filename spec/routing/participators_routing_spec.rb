require "spec_helper"

describe ParticipatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/participators").should route_to("participators#index")
    end

    it "routes to #new" do
      get("/participators/new").should route_to("participators#new")
    end

    it "routes to #show" do
      get("/participators/1").should route_to("participators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/participators/1/edit").should route_to("participators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/participators").should route_to("participators#create")
    end

    it "routes to #update" do
      put("/participators/1").should route_to("participators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/participators/1").should route_to("participators#destroy", :id => "1")
    end

  end
end
