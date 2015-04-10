require 'rails/generators/base'

module IReach
  module Generators
    class LayoutGenerator < Rails::Generators::Base
      source_root IReach::PLUGIN_ROOT

      desc "Copies IReach's default layout to your application."

      def copy_layout
        copy_file "app/views/layouts/i_reach/application.html.erb", 
          "app/views/layouts/application.html.erb"
      end
    end
  end
end
