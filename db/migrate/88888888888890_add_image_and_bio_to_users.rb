class AddImageAndBioToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image, :string
    add_column :users, :bio, :string
  end
end
