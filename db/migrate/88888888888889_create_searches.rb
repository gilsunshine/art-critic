class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :artist_name
      t.integer :after_year
      t.integer :before_year
      t.string :style
      t.string :medium
      t.string :tags

      t.timestamps
    end
  end
end
