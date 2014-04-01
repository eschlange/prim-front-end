require 'spec_helper'

describe "fundings/show" do
  before(:each) do
    @funding = assign(:funding, stub_model(Funding,
      :title => "Title",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
  end
end
