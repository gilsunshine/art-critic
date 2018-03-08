class ChangeBioToTextUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :bio, :text
    change_column :comments, :content, :text
  end
end
