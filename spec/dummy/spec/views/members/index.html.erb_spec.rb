require 'spec_helper'

describe "members/index" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
        :first => "First",
        :last => "Last",
        :email => "Email",
        :nickname => "Nickname"
      ),
      stub_model(Member,
        :first => "First",
        :last => "Last",
        :email => "Email",
        :nickname => "Nickname"
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
  end
end
