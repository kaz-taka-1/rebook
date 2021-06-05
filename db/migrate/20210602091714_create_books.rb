class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :book_title,       null: false 
      t.string :author,           null: false 
      t.integer :total_page,      null: false 
      t.integer :read_page
      t.references :user,         null: false , foreign_key: true
      t.timestamps
    end
  end
end
