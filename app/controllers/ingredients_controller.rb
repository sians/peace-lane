class IngredientsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @ingredients = policy_scope(Ingredient).order(created_at: :desc)
  end

  def show
  end
end
