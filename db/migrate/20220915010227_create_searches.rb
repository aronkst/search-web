class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.boolean :javascript, null: false, default: false
      t.json :json, null: false, default: '{}'
      t.string :next_page, null: false, default: ''
      t.integer :count_pages, null: false, default: 1
      t.text :html, null: false, default: ''
      t.json :values, null: false, default: '{}'
      t.boolean :finish, null: false, default: false

      t.timestamps
    end
  end
end
