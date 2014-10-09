class Member < ActiveRecord::Base
  attr_accessible :email, :first, :last, :nickname
end
