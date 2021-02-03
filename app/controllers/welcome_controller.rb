class WelcomeController < ApplicationController
  def index
    @data =YAML.load(File.read("config/locales/en.yml"))['en']['faq']
  end
end
