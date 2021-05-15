class Post < ApplicationRecord
  belongs_to :pengguna

  has_one_attached :photo
  # post.photo
  has_many :comments, dependent: :destroy
end
