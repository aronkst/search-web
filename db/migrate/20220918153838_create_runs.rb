class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.references :search, null: false, foreign_key: true
      t.boolean :finish, null: false, default: false
      t.boolean :error, null: false, default: false

      t.timestamps
    end
  end
end
