class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :location
      t.boolean :winter
      t.boolean :spring
      t.boolean :summer
      t.boolean :fall
      t.boolean :desert
      t.boolean :medditerannean
      t.boolean :temperate
      t.boolean :downhill
      t.boolean :cross_country
      t.boolean :west
      t.boolean :mountain
      t.boolean :east

      t.timestamps
    end
  end
end
