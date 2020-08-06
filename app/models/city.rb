class City < ApplicationRecord
  has_many :users
  has_many :gossips, through: :users
  validates :city_name,
    presence: true,
    length: { in: 1..40, message: "Entre un nom de ville correct stp !"},
    format: {with: /[a-zA-Z]+(?:[\s-][a-zA-Z]+)*/, message: "Entre un nom de ville correct stp !"}

  validates :zip_code,
  presence: true,
  uniqueness: true
  # format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "Entre un code postal français stp !" }

end