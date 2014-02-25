class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :sh_address1
      t.string :sh_address2
      t.string :sh_city
      t.string :sh_state
      t.integer :sh_zipcode
      t.string :bi_address1
      t.string :bi_address2
      t.string :bi_city
      t.string :bi_state
      t.integer :bi_zipcode
      t.timestamps
    end
  end
end
