class AddCustomerIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :customer_id, :string
    add_column :users, :name, :string
    add_column :users, :address, :json
  end
end
