class FaqController < ApplicationController
  def index
    @html_id = ''
    @faqs = Faq.order(:sort_order)
  end

  def show
    @html_id = params[:id]
    @faqs = Faq.order(:sort_order)
    render :index
  end
end
