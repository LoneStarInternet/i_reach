class UserWithRole < ActiveRecord::Base
  self.table_name = :users

  def role
    return 'admin' if last_name.include?('admin')
    return 'user' if last_name.include?('user')
    nil
  end

  attr_accessible :email, :first_name, :last_name, :phone

  validates :email, uniqueness: true, presence: true

  include MailManager::ContactableRegistry::Contactable
end

MailManager::ContactableRegistry.register_contactable("User",{
  first_name: :first_name,
  last_name: :last_name,
  email_address: :email,
  phone: :phone
})
