require 'spec_helper'

describe "interventions/edit" do
  before(:each) do
    @intervention = assign(:intervention, stub_model(Intervention,
      :name => "MyString",
      :description => "MyString",
      :site => nil
    ))
  end

  it "renders the edit intervention form" do
    render

    assert_select "form[action=?][method=?]", intervention_path(@intervention), "post" do
      assert_select "input#intervention_name[name=?]", "intervention[name]"
      assert_select "input#intervention_description[name=?]", "intervention[description]"
      assert_select "input#intervention_site[name=?]", "intervention[site]"
    end
  end
end
