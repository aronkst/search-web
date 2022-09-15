class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :title
      t.string :url
      t.boolean :javascript
      t.text :json
      t.string :next_page
      t.integer :count_pages

      t.timestamps
    end
  end
end
