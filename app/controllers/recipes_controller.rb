class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @recipes = policy_scope(Recipe).order(created_at: :desc)
  end

  def show
  end
end
