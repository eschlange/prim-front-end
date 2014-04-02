require 'spec_helper'

describe "interventions/index" do
  before(:each) do
    assign(:interventions, [
      stub_model(Intervention,
        :name => "Name",
        :description => "Description",
        :site => nil
      ),
      stub_model(Intervention,
        :name => "Name",
        :description => "Description",
        :site => nil
      )
    ])
  end

  it "renders a list of interventions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
