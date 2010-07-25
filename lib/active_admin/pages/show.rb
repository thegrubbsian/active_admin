module ActiveAdmin
  module Pages
    class Show < Base

      def title
        "#{active_admin_config.resource_name} ##{resource.id}"
      end

      def main_content
        # Eval the show config from the controller
        instance_eval &controller.show_config
      end

    end
  end
end