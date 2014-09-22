class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
    end
  end
end
