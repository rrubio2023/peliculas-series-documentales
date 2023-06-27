# db/migrate/20230627120200_create_documentary_films.rb

class CreateDocumentaryFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :documentary_films do |t|
      t.string :name
      t.text :synopsis
      t.string :director

      t.timestamps
    end
  end
end