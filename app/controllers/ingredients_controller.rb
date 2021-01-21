class IngredientsController < ApplicationController
  before_action :find_params_id, only: %i[update uplike]

  def update
    @ingredient.like ? false : true
    @ingredient.save
    render 'cocktails/show'
  end

  def uplike
    # binding.pry
    @ingredient.like += 1
    @ingredient.save
    @dose = Dose.find(params[:dose_id])
    @cocktail = @dose.cocktail
    render 'cocktails/show'
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:like)
  end

  def find_params_id
    @ingredient = Ingredient.find(params[:id])
  end
end
