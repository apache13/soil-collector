class AddCodeToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :code, :string
  end
end
