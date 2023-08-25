class CreatePhs < ActiveRecord::Migration[7.0]
  def change
    create_table :phs do |t|
      t.belongs_to :sample, null: false, foreign_key: true
      t.float :weight
      t.float :or
      t.float :ph1
      t.float :ph2
      t.float :ph3

      t.timestamps
    end
  end
end
