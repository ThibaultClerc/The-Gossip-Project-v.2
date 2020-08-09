class Like < ApplicationRecord
  belongs_to :gossip
  belongs_to :liker, class_name: "User"

end
