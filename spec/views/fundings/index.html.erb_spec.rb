require 'spec_helper'

describe "fundings/index" do
  before(:each) do
    assign(:fundings, [
      stub_model(Funding,
        :title => "Title",
        :content => "Content"
      ),
      stub_model(Funding,
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of fundings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
