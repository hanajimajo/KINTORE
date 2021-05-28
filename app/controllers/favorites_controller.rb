class FavoritesController < ApplicationController
  

  # いいね非同期
  def create
    @training = Training.find(params[:training_id])
    favorite= current_user.favorites.build(training_id: params[:training_id])
    favorite.save
  end

  def destroy
    @training = Training.find(params[:training_id])
    favorite = Favorite.find_by(training_id: params[:training_id], user_id: current_user.id)
    favorite.destroy
  end

end
