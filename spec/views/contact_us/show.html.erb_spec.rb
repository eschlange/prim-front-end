require 'spec_helper'

describe "contact_us/show" do
  before(:each) do
    @contact_u = assign(:contact_u, stub_model(ContactU,
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
