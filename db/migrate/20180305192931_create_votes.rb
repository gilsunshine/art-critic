class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :comment_id, default: nil
      t.integer :artwork_id, default: nil
      t.integer :value

      t.timestamps
    end
  end
end
