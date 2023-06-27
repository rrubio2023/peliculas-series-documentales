# documentary_film.rb
class DocumentaryFilm < ApplicationRecord
    validates_presence_of :name, :synopsis, :director
  end