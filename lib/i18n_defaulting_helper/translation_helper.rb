module I18nDefaultingHelper
  module ViewHelpers

    def self.included(base)
      ActionView::Helpers::TranslationHelper.module_eval do
        alias_method :original_translate, :translate
        def translate(key, options = {})
          begin
            original_translate(key, options.merge(raise: I18n::MissingTranslationData))
          rescue I18n::MissingTranslationData
            original_translate(key.gsub(/^\./, ''), options.merge(scope: :defaults))
          end
        end
        alias_method :t, :translate
      end
    end

  end
end
