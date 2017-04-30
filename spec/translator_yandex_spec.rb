require "spec_helper"

RSpec.describe TranslatorYandex do
  it "has a version number" do
    expect(TranslatorYandex::VERSION).not_to be nil
  end

  describe "GET api/v1.5/tr.json/translate (Translate)" do
    it "Api response == 200" do
      portuguese_text = "Nós estamos testando o tradutor"
      yandex_api = TranslatorYandex::Yandex.new TEST_API_KEY
      response = yandex_api.translate portuguese_text, "en"
      expect(response["code"]).to eq(200)
    end

    it "translated text match" do
      portuguese_text = "Nós estamos testando o tradutor"
      english_text = "We are testing the translator"
      yandex_api = TranslatorYandex::Yandex.new TEST_API_KEY
      response = yandex_api.translate portuguese_text, "en"

      expect(response["text"].first).to eq(english_text)
    end
  end

  describe "GET api/v1.5/tr.json/getLangs (Supported List)" do
    it "Api response not equal nil or empty '' " do
      yandex_api = TranslatorYandex::Yandex.new TEST_API_KEY
      response = yandex_api.list
      expect(response).not_to eq(nil)
      expect(response).not_to eq("")
    end
  end

  describe "GET api/v1.5/tr.json/detect (Detect)" do
    it "Api response == 200" do
      portuguese_text = "Nós estamos testando o tradutor"
      yandex_api = TranslatorYandex::Yandex.new TEST_API_KEY
      response = yandex_api.detect portuguese_text
      expect(response["code"]).to eq(200)
    end

    it "detect language match with right language" do
      portuguese_text = "Nós estamos testando o tradutor"
      yandex_api = TranslatorYandex::Yandex.new TEST_API_KEY
      response = yandex_api.detect portuguese_text
      expect(response["lang"]).to eq("pt")
    end
  end

end
