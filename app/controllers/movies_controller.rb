class MoviesController < ApplicationController

  def index
    @movie = Movie.new
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render json: { errors: @movie.errors }, status: 422
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :description, :image_url, :days)
  end
end
