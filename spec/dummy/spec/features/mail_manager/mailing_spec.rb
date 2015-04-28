require 'rails_helper'

RSpec.feature MailManager::Mailing do
  before(:each) do
    @design = import_design
    @newsletter = FactoryGirl.create(:newsletter, name: "Bobo newsletter!", design: @design)
    @mailing = FactoryGirl.create(:mailing, subject: "Bobo Mailing", mailable: @newsletter)
  end
  it "shows a newsletter's(mailable's) name on the index" do
    visit "/admin/mail_manager/mailings"
    expect(page.body).to match /Bobo newsletter!/
  end
  it "shows a mailings time format like: Mar 09, 2015 08:51 am" do
    @mailing.update_attribute(:scheduled_at, Time.parse('2015-03-09 08:51 UTC'))
    visit "/admin/mail_manager/mailings"
    expect(page.body).to match /Mar 09, 2015 08:51 am/
  end
end
