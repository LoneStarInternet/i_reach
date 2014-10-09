module IReach
  class Engine < ::Rails::Engine
    isolate_namespace IReach
  end
end
IReach::Engine.config.to_prepare do
  ApplicationController.helper(LayoutHelper)
  MailManager::ApplicationController.layout('i_reach/application')
  Newsletter::ApplicationController.layout('i_reach/application')
end
