
Given(/^a member "(.*?)" exists with email "(.*?)"$/) do |name, email|
  last_name = name.split(/\s+/).last
  first_name = name.split(/\s+/)[0..-2].join(' ')
  Member.create!(first: first_name, last: last_name, email: email)
end

When(/^I go to member "(.*?)"'s edit page$/) do |name|
  last_name = name.split(/\s+/).last
  first_name = name.split(/\s+/)[0..-2].join(' ')
  member = Member.where("last=? and first=?",last_name,first_name).first
  visit edit_member_path(member)
end

Then(/^member "(.*?)" should be subscribed to "(.*?)"$/) do |member_name, mailing_list_name|
  last_name = member_name.split(/\s+/).last
  first_name = member_name.split(/\s+/)[0..-2].join(' ')
  mailing_list = MailManager::MailingList.where(name: mailing_list_name).first
  member = Member.where("last=? and first=?",last_name,first_name).first
  member.subscriptions.detect{|subscription| subscription.mailing_list.name.eql?(mailing_list_name)}.status.to_s.should == 'active'
end

