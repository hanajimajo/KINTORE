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
  end

  def edit
  end

  def bookmark
  end

  def ranking
  end
  
  def update
  end

  def destroy
  end

  private

  def training_params
    params.require(:training).permit(:title, :image, :set, :time, :description)
  end

end
