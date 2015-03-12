require 'rails_helper'

RSpec.describe "members/show", :type => :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :first => "First",
      :last => "Last",
      :email => "Email",
      :nickname => "Nickname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First/)
    expect(rendered).to match(/Last/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Nickname/)
  end
end
