class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.boolean :javascript, null: false, default: false
      t.text :json, null: false, default: ""
      t.string :next_page, null: false, default: ""
      t.integer :count_pages, null: false, default: 1
      t.boolean :finish, null: false, default: false

      t.timestamps
    end
  end
end
