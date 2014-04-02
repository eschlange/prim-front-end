require 'spec_helper'

describe "sites/index" do
  before(:each) do
    assign(:sites, [
      stub_model(Site,
        :name => "Name",
        :description => "Description",
        :about => nil,
        :homes => nil,
        :contact_us => nil,
        :eligibility => nil,
        :funding => nil,
        :resource => nil
      ),
      stub_model(Site,
        :name => "Name",
        :description => "Description",
        :about => nil,
        :homes => nil,
        :contact_us => nil,
        :eligibility => nil,
        :funding => nil,
        :resource => nil
      )
    ])
  end

  it "renders a list of sites" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
