class AddGenderToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :gender, :boolean
  end
end
