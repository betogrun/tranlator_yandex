require "translator_yandex/version"
require "rest-client"
require "json"

module TranslatorYandex
  class Yandex

    def initialize(api_key)
      @api_key = api_key
    end

    def translate text, language
      result = RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/translate', {params: {key: @api_key, text: text, format: 'plain', lang: language }}
      JSON.parse(result.body)
    end

    def list
      result = RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/getLangs', {params: {key: @api_key}}
      JSON.parse(result.body)
    end

    def detect text
      result =  RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/detect', {params: {key: @api_key, text: text}}
      JSON.parse(result.body)
    end

  end

end
