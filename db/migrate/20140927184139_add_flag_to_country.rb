class AddFlagToCountry < ActiveRecord::Migration
  def change
    add_attachment :countries, :flag
  end
end
