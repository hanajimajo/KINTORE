class BookmarksController < ApplicationController
  before_action :authenticate_user!

  def create
    @training = Training.find(params[:training_id])
    bookmark = @training.bookmarks.new(user_id: current_user.id)
    bookmark.save
    redirect_to trainings_path
  end

  def destroy
    @training = Training.find(params[:training_id])
    bookmark = @training.bookmarks.find_by(user_id: current_user.id)
    bookmark.destroy
    redirect_to trainings_path
  end
end
