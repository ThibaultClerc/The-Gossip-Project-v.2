class Comment < ApplicationRecord
  belongs_to :gossip
  belongs_to :author, class_name: "User"
end
