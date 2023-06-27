# movie.rb
class Movie < ApplicationRecord
    validates_presence_of :name, :synopsis, :director
  end