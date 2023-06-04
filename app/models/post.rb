class Post < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
