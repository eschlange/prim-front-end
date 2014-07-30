# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# ParticipantScreeningsController is used to manage participant screening, including showing
# a site's screening questions as well as handling the screening answer responses.
class ParticipantScreeningsController < ApplicationController
  before_action :set_site, :authenticate_user!, :set_questions

  # GET /sites/1/participant_screenings
  def index
    ##TODO Check that current user needs to be screened.
    @questions.each do |question|
      question.screening_answers = ScreeningAnswer.where(screening_question_id: question.id).order(position: :asc)
    end

    respond_to do |format|
      format.html
    end
  end

  # POST /sites/1/participant_screenings
  def create
    user = User.find(current_user.id)
    participants = Participant.find(:all, :params => {:external_id => user.external_id})
    participant = participants[0]

    puts participant_screening_params.inspect
    puts participant_screening_params["1"]

    @questions.each do |question|
      Screening.create(question: question.question_value, answer: participant_screening_params[question.id.to_s], site_id: @site.id, participant_id: participant.id)
    end

    redirect_to('/sites/' + params[:site_id] + '/pages/home')
  end

  private

  def participant_screening_params
    params.permit!
  end

  def set_questions
    @questions = ScreeningQuestion.where(site_id: @site.id.to_s).order(position: :asc)
  end
end
