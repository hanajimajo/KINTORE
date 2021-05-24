class SearchesController < ApplicationController

  def search
    @range = params[:range]
    @trainings = Training.looks(params[:search], params[:word])
    render "/search_result"
  end

end
