class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.references :phone_type, index: true
      t.integer :phoneable_id
      t.string :phoneable_type

      t.timestamps
    end
  end
end
