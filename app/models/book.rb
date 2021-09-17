class Book < ApplicationRecord
  validates :book_title, presence: true
  validates :author, presence: true
  validates :total_page, presence: true

  belongs_to :user
  has_one :preparation,dependent: :destroy
  has_one :output,dependent: :destroy
  has_one_attached :image
end
