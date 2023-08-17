class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :address
      t.text :remark

      t.timestamps
    end
  end
end
