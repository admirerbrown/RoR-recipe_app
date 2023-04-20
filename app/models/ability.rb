# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.is_owner?
      can :manage, Recipe, user_id: user.id
      can :manage, FOOD, user_id: user.id
    else
      can :read, :all
    end
  end
end
