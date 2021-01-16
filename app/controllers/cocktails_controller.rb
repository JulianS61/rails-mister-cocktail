class CocktailsController < ApplicationController
  before_action :find_params_id, only: :show

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  def show
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def find_params_id
    @cocktail = Cocktail.find(params[:id])
  end
end
