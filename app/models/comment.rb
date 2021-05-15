class Comment < ApplicationRecord
  belongs_to :pengguna
  belongs_to :post
end
