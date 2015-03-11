require 'rails_helper'

RSpec.describe "members/edit", :type => :view do
  before(:each) do
    @member = assign(:member, FactoryGirl.create(:member))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_first[name=?]", "member[first]"

      assert_select "input#member_last[name=?]", "member[last]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_nickname[name=?]", "member[nickname]"
    end
  end
end
