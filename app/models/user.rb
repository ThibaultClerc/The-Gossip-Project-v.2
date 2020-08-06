class User < ApplicationRecord
  has_secure_password

  belongs_to :city, optional: true
  has_many :gossips
  
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"

  has_many :comments, foreign_key: 'author_id', class_name: "Comment"
  
  has_many :likes

  validates :first_name,
    presence: true,
    length: { in: 3..14 },
    format: {with: /[a-z ,.'-]+/i}

  validates :last_name,
    presence: true,
    length: { in: 3..25 },
    format: {with: /[a-z ,.'-]+/i}

  validates :description,
    presence: true
    # length: { minimum: 140 }

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Entre une adresse mail correcte stp !" }

  validates :age,
    presence: true
    # format: { with: /([1-9][8-9])/ }

    
end