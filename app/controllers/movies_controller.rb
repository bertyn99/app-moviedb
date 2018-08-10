class MoviesController < ApplicationController
  def index
    puts params
  end

  def search
    @research=SearchMovie.new(params[:movie])
    

  end
end
