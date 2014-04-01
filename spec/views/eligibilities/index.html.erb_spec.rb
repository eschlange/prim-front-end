require 'spec_helper'

describe "eligibilities/index" do
  before(:each) do
    assign(:eligibilities, [
      stub_model(Eligibility,
        :title => "Title",
        :content => "Content"
      ),
      stub_model(Eligibility,
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of eligibilities" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
