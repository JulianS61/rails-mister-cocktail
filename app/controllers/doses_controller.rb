class DosesController < ApplicationController
  before_action :find_params_id, only: :destroy

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @post = Post.new
      render 'cocktails/show'
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:quantity, :ingredient_id)
  end

  def find_params_id
    @dose = Dose.find(params[:id])
  end
end
