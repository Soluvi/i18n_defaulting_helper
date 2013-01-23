module I18nDefaultingHelper
  module ViewHelpers

    def self.included(base)
      ActionView::Helpers::TranslationHelper.module_eval do

        alias_method :original_translate, :translate
        def translate(key, options = {})
          options.merge!(raise: I18n::MissingTranslationData)
          begin
            return original_translate(key, options)
          rescue I18n::MissingTranslationData => e
            original_exception = e
          end
          begin
            return original_translate(key.gsub(/^\./, ''), options.merge(scope: :defaults))
          rescue I18n::MissingTranslationData
            raise original_exception
          end
        end
        alias_method :t, :translate

      end
    end

  end
end
