require 'i18n_defaulting_helper/translation_helper'

module I18nDefaultingHelper
  class Railtie < Rails::Railtie
    initializer "i18n_defaulting_helper.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
