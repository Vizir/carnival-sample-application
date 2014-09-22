class AddColumnsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :comment_id, :integer
    add_column :posts, :file_id, :integer
  end
end
