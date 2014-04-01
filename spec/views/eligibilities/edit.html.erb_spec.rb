require 'spec_helper'

describe "eligibilities/edit" do
  before(:each) do
    @eligibility = assign(:eligibility, stub_model(Eligibility,
      :title => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit eligibility form" do
    render

    assert_select "form[action=?][method=?]", eligibility_path(@eligibility), "post" do
      assert_select "input#eligibility_title[name=?]", "eligibility[title]"
      assert_select "input#eligibility_content[name=?]", "eligibility[content]"
    end
  end
end
