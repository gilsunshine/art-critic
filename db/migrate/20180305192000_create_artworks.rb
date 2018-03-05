class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
