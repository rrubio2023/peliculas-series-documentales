# app/controllers/series_controller.rb
class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      redirect_to series_path, notice: "Serie was successfully created."
    else
      render :new
    end
  end

  def new
    @serie = Serie.new
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end