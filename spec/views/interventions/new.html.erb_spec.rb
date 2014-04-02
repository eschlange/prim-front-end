require 'spec_helper'

describe "interventions/new" do
  before(:each) do
    assign(:intervention, stub_model(Intervention,
      :name => "MyString",
      :description => "MyString",
      :site => nil
    ).as_new_record)
  end

  it "renders new intervention form" do
    render

    assert_select "form[action=?][method=?]", interventions_path, "post" do
      assert_select "input#intervention_name[name=?]", "intervention[name]"
      assert_select "input#intervention_description[name=?]", "intervention[description]"
      assert_select "input#intervention_site[name=?]", "intervention[site]"
    end
  end
end
