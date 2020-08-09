class AddForeignKeyToGossips < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :gossips, :users
  end
end
