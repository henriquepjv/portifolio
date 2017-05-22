class Ability
  include CanCan::Ability

  def initialize(user)

    if user && user.admin?
      add_admin_rules
    elsif user && user.persisted?
      add_user_rules(user)
    end
    can :create, User
  end

  private

  def add_admin_rules
    can :access, :rails_admin
    can :manage, :all
    cannot [:destroy], User
    can :dashboard
  end

  def add_user_rules(user)
  #  can :read, Challenge
  #  can :create, CompletedChallenge
  #  can [:read, :update], CompletedChallenge, user_id: user.id
    can [:read, :update], User, id: user.id
  end
end
