class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  def create
    @
  end
  private
    def recipe_params(name)
      params.require(:ingredient).permit(name)
    end
end
