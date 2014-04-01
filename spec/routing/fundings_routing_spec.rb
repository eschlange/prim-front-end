require "spec_helper"

describe FundingsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fundings").to route_to("fundings#index")
    end

    it "routes to #new" do
      expect(:get => "/fundings/new").to route_to("fundings#new")
    end

    it "routes to #show" do
      expect(:get => "/fundings/1").to route_to("fundings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fundings/1/edit").to route_to("fundings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fundings").to route_to("fundings#create")
    end

    it "routes to #update" do
      expect(:put => "/fundings/1").to route_to("fundings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fundings/1").to route_to("fundings#destroy", :id => "1")
    end

  end
end
