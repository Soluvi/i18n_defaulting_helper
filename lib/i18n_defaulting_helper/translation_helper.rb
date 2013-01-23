module I18nDefaultingHelper
  module ViewHelpers

    def self.included(base)
      ActionView::Helpers::TranslationHelper.module_eval do

        alias_method :original_translate, :translate
        def translate(key, options = {})
          default_key = "defaults.%s" % key.gsub(/^\./, '')
          options.merge!(raise: I18n::MissingTranslationData)
          default = original_translate(default_key, options) rescue nil
          options.merge!(default: default) if default
          original_translate(key, options)
        end
        alias_method :t, :translate

      end
    end

  end
end
