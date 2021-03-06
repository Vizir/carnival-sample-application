class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :status, default: 1
      t.attachment :cover
      t.timestamps
    end
  end
end
