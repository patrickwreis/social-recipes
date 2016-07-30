class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params.require(:recipe)
    .permit(:name, :cuisine, :food_type, :portion, :preparation_time,
            :difficulty, :ingredient, :steps))
    if @recipe.save
      redirect_to @recipe
    else
      flash.now[:notice] = 'Não foi possível criar a receita'
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
