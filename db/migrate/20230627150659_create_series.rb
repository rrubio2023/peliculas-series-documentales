# db/migrate/20230627120100_create_series.rb

class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :name
      t.text :synopsis
      t.string :director

      t.timestamps
    end
  end
end