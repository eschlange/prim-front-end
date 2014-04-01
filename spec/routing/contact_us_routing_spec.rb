require "spec_helper"

describe ContactUsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_us").to route_to("contact_us#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_us/new").to route_to("contact_us#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_us/1").to route_to("contact_us#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_us/1/edit").to route_to("contact_us#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_us").to route_to("contact_us#create")
    end

    it "routes to #update" do
      expect(:put => "/contact_us/1").to route_to("contact_us#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_us/1").to route_to("contact_us#destroy", :id => "1")
    end

  end
end
