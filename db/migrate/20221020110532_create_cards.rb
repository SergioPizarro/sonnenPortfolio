class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :tittle
      t.string :description
      t.references :produkte, null: false, foreign_key: true

      t.timestamps
    end
  end
end
