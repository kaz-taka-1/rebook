class CreatePreparations < ActiveRecord::Migration[6.0]
  def change
    create_table :preparations do |t|
      t.text :reason,             null: false
      t.text :get_ability,        null: false
      t.text :status,             null: false
      t.text :prior_knowledge,    null: false
      t.text :unknown,            null: false
      t.references :book,         null: false , foreign_key: true
      t.timestamps
    end
  end
end
