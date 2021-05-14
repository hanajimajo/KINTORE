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

  end

  def show
    @training = Training.find(params[:id])
  end

  def edit
    @training = Training.find(params[:id])
  end

  def bookmark
  end

  def ranking
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
