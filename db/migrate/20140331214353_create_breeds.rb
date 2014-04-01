class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds, :id => false do |t|
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
