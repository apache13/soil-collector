class CreateLimes < ActiveRecord::Migration[7.0]
  def change
    create_table :limes do |t|
      t.belongs_to :sample, null: false, foreign_key: true
      t.float :weight
      t.float :woodruff
      t.float :ph1
      t.float :ph2
      t.float :ph3

      t.timestamps
    end
  end
end
