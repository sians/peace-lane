class IngredientPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    user.admin == true
  end

  def create?
    user.admin == true
  end

  def edit?
    user.admin == true
  end

  def update?
    user.admin == true
  end

end
