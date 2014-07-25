module PhiHelper
  def retrieve_user(user_id)
    User.where(id: user_id).first
  end

  def render_phi_view(user_id)
    if current_user && (current_user.at_least_a_admin?)
      link_to 'phi',
        phi_path(user_id: user_id),
        remote: true,
        'data-toggle' => 'modal',
        'data-controls-modal' => 'modal-window',
        'data-target' => '#phi-modal-window',
        'data-backdrop' => true,
        'data-keyboard' => true
    else
      '#'
    end
  end
end
