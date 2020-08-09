class Gossip < ApplicationRecord

  belongs_to :user
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
  has_many :authors, foreign_key: 'author_id', class_name: "User"
  has_many :comments
  has_many :likes

  validates :title,
    presence: true
    # length: { in: 3..14, message: "Ton potin doit être compris entre 3 et 14 caractères" }

  validates :content,
    presence: true

  def is_liked_by?(user)
    self.likes.map(&:liker_id).include?(user.id)
  end

  def get_like_by_user(liker)
    self.likes.find_by! liker_id: liker.id
  end

 end
