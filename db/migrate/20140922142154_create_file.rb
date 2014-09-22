class CreateFile < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :title
      t.attachment :file
    end
  end
end
