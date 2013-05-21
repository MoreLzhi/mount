class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :read, :all if user
    can :manage, :all if user.has_role? :admin

    can :manage, Route if user.has_role? :moderator
    can :manage, [Route, Mount, Region] if user.has_role? :moderator
    can :create, [Route, Mount, Region] if user.persisted?
    can [:edit, :update], [Route, Mount, Region] do |resource|
        user.persisted? && resource.user == user
    end
  end
end
