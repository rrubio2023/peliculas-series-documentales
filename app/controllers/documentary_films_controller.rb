# app/controllers/documentary_films_controller.rb
class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)
    if @documentary_film.save
      redirect_to documentary_films_path, notice: "Documentary film was successfully created."
    else
      render :new
    end
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  private

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end