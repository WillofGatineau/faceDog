class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :user_id
      t.string :name
      t.string :race
      t.string :color
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
