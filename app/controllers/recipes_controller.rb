class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order("created_at DESC")
    @q = Recipe.ransack(params[:q])

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
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to root_path
    else
      render :edit
    end
  end


  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  def search
    @q = Recipe.ransack(params[:q])
    @results = @q.result
  
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :cooking_method_id, :season_id, :foodstuff, :process, :image)
    
  end

end
