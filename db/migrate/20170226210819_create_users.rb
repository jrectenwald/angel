class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :age
      t.string :gender
      t.integer :zip
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :password

      t.timestamps
    end
  end
end
