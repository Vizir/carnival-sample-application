class AddColumnToComments < ActiveRecord::Migration
  def change
    add_column :comments, :approved, :boolean, default: :true
  end
end
