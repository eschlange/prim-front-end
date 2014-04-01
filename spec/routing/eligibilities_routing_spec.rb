require "spec_helper"

describe EligibilitiesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/eligibilities").to route_to("eligibilities#index")
    end

    it "routes to #new" do
      expect(:get => "/eligibilities/new").to route_to("eligibilities#new")
    end

    it "routes to #show" do
      expect(:get => "/eligibilities/1").to route_to("eligibilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/eligibilities/1/edit").to route_to("eligibilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/eligibilities").to route_to("eligibilities#create")
    end

    it "routes to #update" do
      expect(:put => "/eligibilities/1").to route_to("eligibilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/eligibilities/1").to route_to("eligibilities#destroy", :id => "1")
    end

  end
end
