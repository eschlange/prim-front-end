# A CanCan configuration file that determines privileges based upon user role.
# @author Eric Schlange <eric.schlange@northwestern.edu>
class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    can :access, :rails_admin   # grant access to rails_admin
    can :dashboard              # grant access to the dashboard

    if user.at_least_a_super_user?
      can :manage, :all
    elsif user.at_least_a_admin?
      can :manage, :all
    elsif user.at_least_a_content_manager?
      can :manage, :all
    elsif user.at_least_a_participant?
      can :read, :all
    end

    #
    # The first argument to `can` is the action you are giving the
    # user permission to do.
    # If you pass :manage it will apply to every action. Other common
    # actions here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the
    # action on. If you pass :all it will apply to every resource.
    # Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter
    # the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    #
  end
end
