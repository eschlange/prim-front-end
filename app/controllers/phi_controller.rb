# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# PhiController handles requests to view user phi.
class PhiController < ApplicationController
  before_action :set_site

  def show
    respond_to do |format|
      format.js
    end
  end
end
