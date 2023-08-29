class AddReceiptToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :receipt, :string
    add_column :requests, :analyzed, :date
  end
end
