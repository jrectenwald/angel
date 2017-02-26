class AddEmailPhone1Phone2AddressAndPasswordToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :zip, :integer
    add_column :users, :email, :string
    add_column :users, :phone1, :string
    add_column :users, :phone2, :string
    add_column :users, :address, :string
    add_column :users, :password, :stringa
  end
end
