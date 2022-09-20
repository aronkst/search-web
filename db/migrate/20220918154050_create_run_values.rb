class CreateRunValues < ActiveRecord::Migration[7.0]
  def change
    create_table :run_values do |t|
      t.references :run, null: false, foreign_key: true
      t.integer :page, null: false
      t.json :values, null: false

      t.timestamps
    end
  end
end
