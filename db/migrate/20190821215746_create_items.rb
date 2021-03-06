class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :color
      t.text :description
      t.boolean :available
      t.belongs_to :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
