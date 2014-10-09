require 'spec_helper'

describe "members/new" do
  before(:each) do
    assign(:member, stub_model(Member,
      :first => "MyString",
      :last => "MyString",
      :email => "MyString",
      :nickname => "MyString"
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", members_path, "post" do
      assert_select "input#member_first[name=?]", "member[first]"
      assert_select "input#member_last[name=?]", "member[last]"
      assert_select "input#member_email[name=?]", "member[email]"
      assert_select "input#member_nickname[name=?]", "member[nickname]"
    end
  end
end
