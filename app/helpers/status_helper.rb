module StatusHelper
  def retrieve_status(user_id)
    user = User.find(user_id)
    participants = Participant.find(:all, :params => {:external_id => user.external_id})
    participant = participants[0]
    statuses = Status.find(:all, :params => { :participant_id => participant.id })
    statuses[0]
  end

  def render_status_view(user_id, status)
    if current_user && (current_user.at_least_a_admin?)
      final_status = status.name
      if status.description && !status.description.empty?
        final_status += ' - ' + status.description
      end

      link_to final_status,
        status_path(user_id: user_id),
        remote: true,
        'data-toggle' => 'modal',
        'data-controls-modal' => 'modal-window',
        'data-target' => '#status-modal-window',
        'data-backdrop' => true,
        'data-keyboard' => true
    else
      '#'
    end
  end
end
