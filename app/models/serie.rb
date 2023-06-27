# serie.rb
class Serie < ApplicationRecord
    validates_presence_of :name, :synopsis, :director
  end