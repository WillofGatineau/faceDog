class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :dog_id
      t.string :url
      t.integer :width
      t.integer :height
      t.integer :size

      t.timestamps
    end
  end
end
