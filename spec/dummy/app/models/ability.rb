if defined?(CanCan::Ability)
  class Ability
    include CanCan::Ability
  
    def initialize(user)
      eval Newsletter.abilities
      eval MailManager.abilities
    end
  end
end
