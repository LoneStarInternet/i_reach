Given(/^a mailing list "(.*?)" exists$/) do |name|
  MailManager::MailingList.create!(name: name)
end
