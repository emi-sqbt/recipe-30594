class RecipesController < ApplicationController

  def index
    @recipes = Recipe.order("created_at DESC")
  end

  def new
  end

  def create
  end

end
