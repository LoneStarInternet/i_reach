Then(/^I should see "(.*?)"$/) do |content|
  page.body.should have_content content
end

When(/^I check "(.*?)"$/) do |checkbox_name|
  check(checkbox_name)
end

When(/^I click the "(.*?)" button$/) do |button_name|
  click_button(button_name) 
end
