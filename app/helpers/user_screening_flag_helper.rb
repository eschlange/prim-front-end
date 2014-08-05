module UserScreeningFlagHelper
  def user_screening_flag(user, site)
    UserScreeningFlag.where(user_id: user.id, site_id: site.id).first
  end

  def user_screening_link_text(user, site)
    user_screening_flag = UserScreeningFlag.where(user_id: user.id, site_id: site.id).first
    if user_screening_flag
      user_screening_flag.active ? 'Screening Enabled' : 'Screening Disabled'
    else
      'Screening Disabled'
    end
  end
end