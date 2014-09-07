class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :image
      t.string :title
      t.references :person, index: true

      t.timestamps
    end
  end
end
