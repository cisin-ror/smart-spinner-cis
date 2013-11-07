require 'rails'

if ::Rails.version < "3.1"
  module SmartSpinnerCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base

        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)

        def copy_jquery_nested
          copy_file "javascripts/smart-spinner-cis.js", "public/javascripts/smart-spinner-cis.js"
          copy_file "stylesheets/smart-spinner-cis.css", "public/stylesheets/smart-spinner-cis.css"
        end
      end
    end
  end
else
  module SmartSpinnerCis
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "This generator installs  Jquery , CSS and Images"
        source_root File.expand_path('../../../../../app/assets', __FILE__)
        def add_assets
          if detect_js_format.nil?
            copy_file "javascripts/jquery.smart-spinner-cis.js", "app/assets/javascripts/smart-spinner-cis.js"
          else
            insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require smart-spinner-cis\n", :after => "jquery_ujs\n"
          end
          if detect_css_format.nil?
            copy_file "stylesheets/jquery.smart-spinner-cis.css", "app/assets/stylesheets/smart-spinner-cis.css"
          else
            insert_into_file "app/assets/stylesheets/application#{detect_css_format[0]}", "#{detect_css_format[1]} require smart-spinner-cis\n", :after => "require_self\n"
          end
          #copy_file "images/notification_top_alert.png", "app/assets/images/notification_top_alert.png"
          #copy_file "images/notification_top_error.png", "app/assets/images/notification_top_error.png"
          #copy_file "images/notification_top_ok.png", "app/assets/images/notification_top_ok.png"

        end

        def detect_js_format
          return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
          return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
        end
        def detect_css_format
          return ['.css.scss', '*='] if File.exist?('app/assets/stylesheets/application.css.scss')
          return ['.css', '*='] if File.exist?('app/assets/stylesheets/application.css')
        end
      end
    end
  end
end
