module SiteImagesHelper
  def retrieve_site_image_by_position(site_id, position)
    SiteImage.where(:site_id => site_id, :position => position).first_or_initialize(site_id: site_id, position: position)
  end
  def render_site_image_edit_link (site_id, position)

  end
end
