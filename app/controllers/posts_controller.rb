class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @post.cocktail = @cocktail
    if @post.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :rating)
  end
end
