# db/migrate/20230627120000_create_movies.rb

class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :synopsis
      t.string :director

      t.timestamps
    end
  end
end