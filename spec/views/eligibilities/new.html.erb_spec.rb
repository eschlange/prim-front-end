require 'spec_helper'

describe "eligibilities/new" do
  before(:each) do
    assign(:eligibility, stub_model(Eligibility,
      :title => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new eligibility form" do
    render

    assert_select "form[action=?][method=?]", eligibilities_path, "post" do
      assert_select "input#eligibility_title[name=?]", "eligibility[title]"
      assert_select "input#eligibility_content[name=?]", "eligibility[content]"
    end
  end
end
