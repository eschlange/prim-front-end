# Author::  Eric Schlange (mailto:eric.schlange at northwestern.edu)
# License:: GPLv2

# Controller used for the home splash.

class HomeController < ApplicationController
  layout "application"

  PAGE_NAME = "home"

  def index
    current_page(PAGE_NAME)
  end
end
