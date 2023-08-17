class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.date :receive
      t.boolean :ph
      t.boolean :lime
      t.boolean :om
      t.boolean :p
      t.boolean :k
      t.string :channel
      t.text :remark

      t.timestamps
    end
  end
end
