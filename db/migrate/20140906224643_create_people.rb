class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.date :birthday

      t.timestamps
    end
  end
end
