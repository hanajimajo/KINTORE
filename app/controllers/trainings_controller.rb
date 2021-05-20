class TrainingsController < ApplicationController

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @training.user_id = current_user.id
    @training.save
    redirect_to trainings_path
  end

  def index
    @trainings = Training.all
    @user = current_user

  end

  def show
  end

  def edit
    @training = Training.find(params[:id])
  end

  def bookmark
    @bookmarks = Bookmark.where(user_id: current_user.id)
  end

  def ranking
    @rankings = Training.find(Favorite.group(:training_id).order('count(training_id) desc').limit(3).pluck(:training_id))
    @training = Training.all
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
    redirect_to training_path(@training)
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path
  end

  private

  def training_params
    params.require(:training).permit(:title, :image, :set, :time, :description)
  end

end
