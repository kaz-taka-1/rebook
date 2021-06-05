class Book < ApplicationRecord
  validate :book_title
  validate :author
  validate :total_page

  belongs_to :user
  belongs_to :preparation
  has_one_attached :image
end
