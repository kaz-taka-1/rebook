class CreateOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :outputs do |t|
      t.text :text
      t.references :book,         null: false , foreign_key: true
      t.timestamps
    end
  end
end
