require 'spec_helper'

describe "sites/edit" do
  before(:each) do
    @site = assign(:site, stub_model(Site,
      :name => "MyString",
      :description => "MyString",
      :about => nil,
      :homes => nil,
      :contact_us => nil,
      :eligibility => nil,
      :funding => nil,
      :resource => nil
    ))
  end

  it "renders the edit site form" do
    render

    assert_select "form[action=?][method=?]", site_path(@site), "post" do
      assert_select "input#site_name[name=?]", "site[name]"
      assert_select "input#site_description[name=?]", "site[description]"
      assert_select "input#site_about[name=?]", "site[about]"
      assert_select "input#site_home[name=?]", "site[homes]"
      assert_select "input#site_contact_us[name=?]", "site[contact_us]"
      assert_select "input#site_eligibility[name=?]", "site[eligibility]"
      assert_select "input#site_funding[name=?]", "site[funding]"
      assert_select "input#site_resource[name=?]", "site[resource]"
    end
  end
end
