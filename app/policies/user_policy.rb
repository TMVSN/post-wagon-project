class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    user.manager
  end

  def new?
    add_user?
  end

  def add_user?
    user.manager
  end

  def manager?
    user.manager
  end
end
