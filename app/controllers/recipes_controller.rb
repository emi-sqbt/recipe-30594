class RecipesController < ApplicationController
  before_action :set_recipe, only: [:edit, :show, :update, :destroy]

  def index
    @recipes = Recipe.all.order("created_at DESC")
    @q = Recipe.ransack(params[:q])
    @categories = Category.all 
    @cookingmethodes = CookingMethod.all
    @season = Season.all
    @results = @q. result(distinct: true)

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

  def show
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  def destroy
    @recipe.destroy
    redirect_to root_path
  end

  def search
   
    @q = Recipe.search(search_params)
    @results = @q.result(distinct: true)
  
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :cooking_method_id, :season_id, :foodstuff, :process, :image)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def search_params
    params.require(:q).permit(:name_cont, :category_id_eq, :cooking_method_id_eq, :season_id_eq)
  end
end
