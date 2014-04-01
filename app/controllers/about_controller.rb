class AboutController < ApplicationController
  layout "application"

  PAGE_NAME = "about"

  def index
    current_page(PAGE_NAME)
  end
end
