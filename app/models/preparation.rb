class Preparation < ApplicationRecord
  t.reason,             null: false
      t.get_ability,        null: false
      t.status,             null: false
      t.prior_knowledge,    null: false
      t.unknown,            null: false
      t.book,               null: false , foreign_key: true
end
