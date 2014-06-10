module SiteImagesHelper

  def retrieve_site_image_by_position(site_id, position)
    SiteImage.where(:site_id => site_id, :position => position).first_or_initialize(site_id: site_id, position: position)
  end

  def render_site_image_edit_link (site_id, position)
    if !current_user.nil? and (current_user.role_id == 1 or current_user.role_id == 2)

      link_to image_tag(retrieve_site_image_by_position(site_id, position).image.url, :class => 'img-responsive'),
        site_image_update_path(@site, :position => position),
        {
          :remote => true,
          'data-toggle' => 'modal',
          'data-controls-modal' => 'modal-window',
          'data-target' => '#image-update-modal-window',
          'data-backdrop' => true,
          'data-keyboard' => true
        }
      else
        image_tag retrieve_site_image_by_position(site_id, position).image.url, :class => 'img-responsive'
      end
  end
end
