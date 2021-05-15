class Relationship < ApplicationRecord
  belongs_to :follower, class_name: 'Pengguna'
  belongs_to :following, class_name: 'Pengguna'

  validates :follower_id, presence: true
  validates :following_id, presence: true
end
