class CreateTextPages < ActiveRecord::Migration
  def change
    create_table :text_pages do |t|
      t.string :name
      t.string :title
      t.text :body
      t.integer :section_id

      t.timestamps
    end

    add_index :text_pages, :name, :unique => true
  end
end
