class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :post_id
      
    end
  end
end
