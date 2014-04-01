require 'spec_helper'

describe "contact_us/index" do
  before(:each) do
    assign(:contact_us, [
      stub_model(ContactU,
        :title => "Title",
        :content => "Content"
      ),
      stub_model(ContactU,
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of contact_us" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
