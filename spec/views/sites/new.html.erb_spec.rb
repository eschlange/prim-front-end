require 'spec_helper'

describe "sites/new" do
  before(:each) do
    assign(:site, stub_model(Site,
      :name => "MyString",
      :description => "MyString",
      :about => nil,
      :homes => nil,
      :contact_us => nil,
      :eligibility => nil,
      :funding => nil,
      :resource => nil
    ).as_new_record)
  end

  it "renders new site form" do
    render

    assert_select "form[action=?][method=?]", sites_path, "post" do
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
