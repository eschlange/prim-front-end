require 'spec_helper'

describe "resources/edit" do
  before(:each) do
    @resource = assign(:resource, stub_model(Resource,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit resource form" do
    render

    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do
      assert_select "input#resource_title[name=?]", "resource[title]"
      assert_select "input#resource_content[name=?]", "resource[content]"
    end
  end
end
