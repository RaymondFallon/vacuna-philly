class WelcomeController < ApplicationController
  def index
    @html_id = params[:faq_id]
    @data = YAML.safe_load(File.read('config/locales/es.yml'))['es']['faq']
  end
end
