class City < ApplicationRecord
  has_many :users

  validates :city_name,
    presence: true
    # length: { in: 1..40 }
    # format: {with: /[a-zA-Z-éàôê'ç^ÿ& ]/}

  validates :zip_code,
  presence: true,
  uniqueness: true
  # format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }

end