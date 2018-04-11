class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end
  def create
    @
  end
  private
    def ingredient_params(name)
      params.require(:ingredient).permit(name)
    end
end
