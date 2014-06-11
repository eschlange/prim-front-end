# A concern for specific role-related logic, used to
# simplify usage of user roles.
# @author Eric Schlange <eric.schlange@northwestern.edu>
module Role
  extend ActiveSupport::Concern

  # Role ID constants
  SUPER_USER_ID = 1
  ADMIN_ID = 2
  CONTENT_MANAGER_ID = 3
  PARTICIPANT_ID = 4

  def at_least_a_super_user?
    ADMIN_ID >= role_identifier
  end

  def at_least_a_admin?
    ADMIN_ID >= role_identifier
  end

  def at_least_a_content_manager?
    CONTENT_MANAGER_ID >= role_identifier
  end

  def at_least_a_participant?
    PARTICIPANT_ID >= role_identifier
  end

  def role_name
    case role_identifier
    when 1 then 'super_user'
    when 2 then 'admin'
    when 3 then 'content_manager'
    when 4 then 'participant'
    end
  end
end