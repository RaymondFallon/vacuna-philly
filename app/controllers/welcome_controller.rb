class WelcomeController < ApplicationController
  def index
    redirect_to faq_path
  end
end
