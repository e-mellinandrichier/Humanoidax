class CreateRobots < ActiveRecord::Migration[7.0]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :image
      t.string :utility
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end