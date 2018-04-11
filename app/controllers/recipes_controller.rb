class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  def create
    @recipe = Recipe.create(recipe_params(:name))
  end
  private
    def recipe_params(name)
      params.require(:recipe).permit(name)
    end
end
