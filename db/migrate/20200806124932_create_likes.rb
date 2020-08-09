class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :gossip, index: true
      t.references :liker, index: true
      t.timestamps
    end
  end
end
