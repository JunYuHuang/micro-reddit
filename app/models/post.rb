class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 1 }
  validates :url, presence: true, length: { minimum: 3 }
end
