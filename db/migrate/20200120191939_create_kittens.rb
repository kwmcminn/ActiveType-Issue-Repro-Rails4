class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.string :name
      t.integer :age
      t.string :color
      t.belongs_to :dog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
