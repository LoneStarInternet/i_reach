require 'rails_helper'

RSpec.describe "members/new", :type => :view do
  before(:each) do
    assign(:member, Member.new(
      :first => "MyString",
      :last => "MyString",
      :email => "MyString",
      :nickname => "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_first[name=?]", "member[first]"

      assert_select "input#member_last[name=?]", "member[last]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_nickname[name=?]", "member[nickname]"
    end
  end
end
