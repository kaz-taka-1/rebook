class Preparation < ApplicationRecord
  validates :reason, presence: true
  validates :get_ability, presence: true
  validates :status, presence: true
  validates :prior_knowledge, presence: true
  validates :unknown, presence: true
  validates :book_id, presence: true

  belongs_to :book
end
