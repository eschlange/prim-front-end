class AboutController < ApplicationController
  layout "application"

  PAGE_NAME = "about"

  def about
    current_page(PAGE_NAME)
  end
end
