module ScreeningHelper
  def retrieve_screenings(user_id)
    user = User.find(user_id)
    participants = Participant.find(:all, :params => {:external_id => user.external_id})
    participant = participants[0]
    @screenings = Screening.find(:all, :params => {:participant_id => participant.id})
    puts @screenings.inspect
    @screenings
  end
``
  def render_screening_view(user_id)
    if current_user && (current_user.at_least_a_admin?)
      link_to 'screening',
        screening_path(user_id: user_id),
        remote: true,
        'data-toggle' => 'modal',
        'data-controls-modal' => 'modal-window',
        'data-target' => '#screening-modal-window',
        'data-backdrop' => true,
        'data-keyboard' => true,
        class: 'user-admin-link'
    else
      '#'
    end
  end
end
