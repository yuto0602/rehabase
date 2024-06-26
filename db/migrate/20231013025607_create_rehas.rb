class CreateRehas < ActiveRecord::Migration[6.0]
  def change
    create_table :rehas do |t|

      t.string :title,       null: false
      t.integer :category_id, null: false
      t.string :disease,      null: false
      t.text :complication,   null: false
      t.string :keyword,      null: false
      t.text :personality,    null: false
      t.text :rehabilitation, null: false
      t.integer :evidence_id, null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
