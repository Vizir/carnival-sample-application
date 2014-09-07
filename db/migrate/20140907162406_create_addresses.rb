class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :number
      t.string :complement
      t.string :zipcode
      t.references :city, index: true
      t.references :state, index: true
      t.references :country, index: true
      t.references :address_type, index: true
      t.references :person, index: true

      t.timestamps
    end
  end
end
