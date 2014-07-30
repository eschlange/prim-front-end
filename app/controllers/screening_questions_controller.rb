# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# ScreeningQuestionsController is a CRUD for screening questions.
class ScreeningQuestionsController < ApplicationController
  before_action :set_site

  # GET /sites/1/participant_screenings
  def index
    authorize! :manage, current_user.role_identifier

    @questions = ScreeningQuestion.where(site_id: @site.id).order(position: :asc)
    @questions.each do |question|
      question.screening_answers = ScreeningAnswer.where(screening_question_id: question.id).order(position: :asc)
    end

    respond_to do |format|
      format.html
    end
  end
end
