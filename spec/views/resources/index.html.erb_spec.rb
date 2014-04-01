require 'spec_helper'

describe "resources/index" do
  before(:each) do
    assign(:resources, [
      stub_model(Resource,
        :title => "Title",
        :content => "Content"
      ),
      stub_model(Resource,
        :title => "Title",
        :content => "Content"
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
