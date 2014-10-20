class FavoritesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: @post)

    authorize favorite
    if favorite.save
      flash[:notice] = "Favorite was saved."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "There was an error saving the favorite. Please try again."
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    authorize favorite
    is_favorite_destroyed = favorite.destroy
    if is_favorite_destroyed
      flash[:notice] = "Favorite was deleted."
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "There was an error removing the Favorite. Please try again."
      redirect_to [@post.topic, @post]
    end
  end
end

