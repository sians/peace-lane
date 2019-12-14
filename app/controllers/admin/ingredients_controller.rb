class Admin::IngredientsController < ApplicationController

  def index
    @ingredients = policy_scope(Ingredient).order(created_at: :desc)
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to admin_ingredients_path
    else
      render 'admin/ingredients/new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_ingredient
    @ingredient = Ingredient.find(params[:id])
    authorize @ingredient
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :description, :thumb, :thumb_cache, :pantry, :fresh)
  end

end
