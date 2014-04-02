require 'spec_helper'

describe PagesController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      expect(response).to be_success
    end
  end

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      expect(response).to be_success
    end
  end

  describe "GET 'contact_us'" do
    it "returns http success" do
      get 'contact_us'
      expect(response).to be_success
    end
  end

  describe "GET 'eligibility'" do
    it "returns http success" do
      get 'eligibility'
      expect(response).to be_success
    end
  end

  describe "GET 'funding'" do
    it "returns http success" do
      get 'funding'
      expect(response).to be_success
    end
  end

  describe "GET 'resources'" do
    it "returns http success" do
      get 'resources'
      expect(response).to be_success
    end
  end

end
