class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.text :password
      t.string :forname
      t.string :lastname
      t.integer :age
      t.string :city
      t.text :occupation
      t.text :salt

      t.timestamps
    end
  end
end
