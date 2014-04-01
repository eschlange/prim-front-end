require 'spec_helper'

describe "ContactUs" do
  describe "GET /contact_us" do
    it "works! (now write some real specs)" do
      get contact_us_path
      expect(response.status).to be(200)
    end
  end
end
