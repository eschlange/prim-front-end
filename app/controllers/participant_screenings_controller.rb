# Author::  Eric Schlange (mailto:eric.schlange@northwestern.edu)
# License:: GPLv2

# ParticipantScreeningsController is used to manage participant screening, including showing
# a site's screening questions as well as handling the screening answer responses.
class ParticipantScreeningsController < ApplicationController
  before_action :set_site, :authenticate_user!, :set_questions

  # GET /sites/1/participant_screenings
  def index
    ##TODO Check that current user needs to be screened.
    respond_to do |format|
      format.html
    end
  end

  # POST /sites/1/participant_screenings
  def create
    user = User.find(current_user.id)
    participants = Participant.find(:all, :params => {:external_id => user.external_id})
    participant = participants[0]

    @questions.each do |question|

      if question.question_type == "CHECK_BOX"
        answers = ''
        question.screening_answers.each do |answer|
          if participant_screening_params[question.id.to_s][answer.id.to_s]
            puts participant_screening_params[question.id.to_s][answer.id.to_s].inspect
            answers += ' |' + participant_screening_params[question.id.to_s][answer.id.to_s][0] + '| '
          end
        end
      else
        answers = participant_screening_params[question.id.to_s]
      end
      Screening.create(question: question.question_value, answer: answers, site_id: @site.id, participant_id: participant.id)
    end

    @flag = UserScreeningFlag.find_by(site_id: @site.id, user_id: user.id)
    puts '$$$$'
    puts @flag.inspect
    @flag.active = false
    @flag.save

    redirect_to('/sites/' + params[:site_id] + '/pages/home')
  end

  private

  def participant_screening_params
    params.permit!
  end

  def set_questions
    @questions = ScreeningQuestion.where(site_id: @site.id.to_s).order(position: :asc)
    @questions.each do |question|
      question.screening_answers = ScreeningAnswer.where(screening_question_id: question.id).order(position: :asc)
    end
  end
end
