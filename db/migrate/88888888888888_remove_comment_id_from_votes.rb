class RemoveCommentIdFromVotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :votes, :comment_id, :integer
  end
end
