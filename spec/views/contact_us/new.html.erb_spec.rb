require 'spec_helper'

describe "contact_us/new" do
  before(:each) do
    assign(:contact_u, stub_model(ContactU,
      :title => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new contact_u form" do
    render

    assert_select "form[action=?][method=?]", contact_us_path, "post" do
      assert_select "input#contact_u_title[name=?]", "contact_u[title]"
      assert_select "input#contact_u_content[name=?]", "contact_u[content]"
    end
  end
end
