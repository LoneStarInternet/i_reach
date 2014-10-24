require 'spec_helper'

describe "members/edit" do
  before(:each) do
    @member = FactoryGirl.create(:member)
    @mailing_list = FactoryGirl.create(:mailing_list)
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", member_path(@member), "post" do
      assert_select "input#member_first[name=?]", "member[first]"
      assert_select "input#member_last[name=?]", "member[last]"
      assert_select "input#member_email[name=?]", "member[email]"
      assert_select "input#member_nickname[name=?]", "member[nickname]"
    end
  end
end
