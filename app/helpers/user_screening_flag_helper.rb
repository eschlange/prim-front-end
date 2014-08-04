def user_screening_link_text(user, site)
  user_screening_flag = UserScreeningFlag.where(user_id: user.id, site_id: site.id)
  user_screening_flag.active? ? 'Screening Enabled' : 'Screening Disabled'
end