class CocktailsController < ApplicationController
  before_action :find_params_id, only: %i[show destroy]

  def home
    @any_instance = Cocktail.any?
  end

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
      render :new
    end
  end

  def show
    @dose = Dose.new
    @post = Post.new
    @avg_rating = rating_average
  end

  def destroy
    @cocktail.destroy
    redirect_to :cocktails
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :picture)
  end

  def find_params_id
    @cocktail = Cocktail.find(params[:id])
  end

  def rating_average
    ratings = @cocktail.posts.map { |post| post.rating }
    average = ratings.sum.to_f / ratings.size
    average.nan? ? 0 : average
  end
end
