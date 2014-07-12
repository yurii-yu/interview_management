class AddEmailPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_password, :string
  end
end
