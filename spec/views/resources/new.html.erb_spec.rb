require 'spec_helper'

describe "resources/new" do
  before(:each) do
    assign(:resource, stub_model(Resource,
      :title => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do
      assert_select "input#resource_title[name=?]", "resource[title]"
      assert_select "input#resource_content[name=?]", "resource[content]"
    end
  end
end
