require 'rails_helper'

RSpec.describe "members/index", :type => :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :first => "First",
        :last => "Last",
        :email => "Email",
        :nickname => "Nickname"
      ),
      Member.create!(
        :first => "First",
        :last => "Last",
        :email => "Email",
        :nickname => "Nickname"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
  end
end
