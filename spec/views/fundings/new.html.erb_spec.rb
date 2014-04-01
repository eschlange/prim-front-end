require 'spec_helper'

describe "fundings/new" do
  before(:each) do
    assign(:funding, stub_model(Funding,
      :title => "MyString",
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new funding form" do
    render

    assert_select "form[action=?][method=?]", fundings_path, "post" do
      assert_select "input#funding_title[name=?]", "funding[title]"
      assert_select "input#funding_content[name=?]", "funding[content]"
    end
  end
end
