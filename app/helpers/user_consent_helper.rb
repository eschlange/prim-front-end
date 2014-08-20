module UserConsentHelper
  def retrieve_user_consent(site_id, user_id)
    UserConsent.where(site_id: site_id, user_id: user_id).first
  end

  def render_user_consent_view(site_id, user_id)
    if current_user && (current_user.at_least_a_admin?)
      link_to 'user consent',
              user_consent_view_path(site_id: site_id, user_id: user_id),
              remote: true,
              'data-toggle' => 'modal',
              'data-controls-modal' => 'modal-window',
              'data-target' => '#user-consent-modal-window',
              'data-backdrop' => true,
              'data-keyboard' => true,
              class: 'user-admin-link'
    else
      '#'
    end
  end
end
