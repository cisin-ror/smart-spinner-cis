require 'smart-spinner-cis/view_helpers'
module SmartSpinnerCis
  class Railtie < ::Rails::Railtie
    initializer "smart-spinner-cis.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
