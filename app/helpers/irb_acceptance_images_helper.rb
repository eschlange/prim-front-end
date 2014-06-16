# Helper methods for irb acceptance image manipulation.
# @author Eric Schlange <eric.schlange@northwestern.edu>
module IrbAcceptanceImagesHelper
  def retrieve_irb_acceptance_image(site_id)
    site_consent = Site.find(site_id).consent
    IrbAcceptanceImage.where(consent_id: site_consent.id).order(:created_at).first_or_initialize(consent_id: site_consent.id)
  end

  def render_irb_acceptance_image_edit_link(site_id)
    if current_user && (current_user.at_least_a_content_manager?)

      link_to image_tag(retrieve_irb_acceptance_image(site_id).image.url, class: 'img-responsive'), irb_acceptance_image_update_path(@site), remote: true, 'data-toggle' => 'modal', 'data-controls-modal' => 'modal-window', 'data-target' => '#image-update-modal-window', 'data-backdrop' => true, 'data-keyboard' => true
    else
      image_tag retrieve_irb_acceptance_image(site_id).image.url, class: 'img-responsive'
    end
  end
end