module IReach
  class Engine < ::Rails::Engine
    isolate_namespace IReach
  end
end
IReach::Engine.config.to_prepare do
  ApplicationController.helper(LayoutHelper)
  ApplicationController.layout('i_reach/application')
  MailManager::ApplicationController.layout('i_reach/application')
  MailManager::ApplicationController.helper(LayoutHelper)
  Newsletter::ApplicationController.layout('i_reach/application')
  Newsletter::ApplicationController.helper(LayoutHelper)
end
