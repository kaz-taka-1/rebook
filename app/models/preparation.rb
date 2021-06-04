class Preparation < ApplicationRecord
  validate :reason
  validate :get_ability
  validate :status
  validate :prior_knowledge
  validate :unknown
  validate :book_id
end
