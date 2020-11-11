class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :cooking_method_id, :season_id, :foodstuff, :process, :image)
    
  end

end
