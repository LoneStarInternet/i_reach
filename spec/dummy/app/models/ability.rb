if defined?(CanCan::Ability)
  class Ability
    include CanCan::Ability
  
    def initialize(user)
      true if user.present?
    end
  end
end
