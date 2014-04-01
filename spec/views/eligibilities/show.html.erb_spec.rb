require 'spec_helper'

describe "eligibilities/show" do
  before(:each) do
    @eligibility = assign(:eligibility, stub_model(Eligibility,
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
