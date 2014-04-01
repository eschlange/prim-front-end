require 'spec_helper'

describe "contact_us/edit" do
  before(:each) do
    @contact_u = assign(:contact_u, stub_model(ContactU,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit contact_u form" do
    render

    assert_select "form[action=?][method=?]", contact_u_path(@contact_u), "post" do
      assert_select "input#contact_u_title[name=?]", "contact_u[title]"
      assert_select "input#contact_u_content[name=?]", "contact_u[content]"
    end
  end
end
