class Like < ApplicationRecord
  belongs_to :gossiprail
  belongs_to :liker, class_name: "User"

end
