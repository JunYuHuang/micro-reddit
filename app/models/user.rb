class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :password, presence: true, length: { in: 6..16 }
end
