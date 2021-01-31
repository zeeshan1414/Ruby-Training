class AddCommentableIndexToComments < ActiveRecord::Migration[6.1]
  def change
  end
  add_index :comments, [:commentable_type, :commentable_id]  
end
