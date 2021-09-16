class Book < ApplicationRecord
  validate :book_title
  validate :author
  validate :total_page

  belongs_to :user
  has_one :preparation,dependent: :destroy
  has_one :output,dependent: :destroy
  has_one_attached :image
end
