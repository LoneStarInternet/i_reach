class Member < ActiveRecord::Base
  attr_accessible :email, :first, :last, :nickname
  include MailManager::ContactableRegistry::Contactable
end
MailManager::ContactableRegistry.register_contactable("Member",
{
    :first_name => :first,
      :last_name=> :last,
        :email_address=> :email
})

