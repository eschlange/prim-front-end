require 'spec_helper'

describe "interventions/show" do
  before(:each) do
    @intervention = assign(:intervention, stub_model(Intervention,
      :name => "Name",
      :description => "Description",
      :site => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
