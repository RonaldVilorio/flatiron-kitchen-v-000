class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.create(recipe_params(:name))
    redirect_to recipe_path(@recipe)
  end
  def show
    @recipe = Recipe.find(params[:id])
  end
  private
    def recipe_params(name)
      params.require(:recipe).permit(name)
    end
end
