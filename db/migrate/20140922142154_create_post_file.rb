class CreatePostFile < ActiveRecord::Migration
  def change
    create_table :post_files do |t|
      t.string :title
      t.attachment :file
      t.integer :post_id
    end
  end
end
