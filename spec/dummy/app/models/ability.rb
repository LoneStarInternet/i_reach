class Ability
  include CanCan::Ability

  def initialize(user)
    Rails.logger.debug "Setting up Abilities"
    eval Newsletter.abilities
    eval MailManager.abilities
  end
end
