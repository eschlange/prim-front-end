require 'spec_helper'

describe "fundings/edit" do
  before(:each) do
    @funding = assign(:funding, stub_model(Funding,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit funding form" do
    render

    assert_select "form[action=?][method=?]", funding_path(@funding), "post" do
      assert_select "input#funding_title[name=?]", "funding[title]"
      assert_select "input#funding_content[name=?]", "funding[content]"
    end
  end
end
