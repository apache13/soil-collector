class CreateOms < ActiveRecord::Migration[7.0]
  def change
    create_table :oms do |t|
      t.belongs_to :sample, null: false, foreign_key: true
      t.float :weight
      t.float :K2CrO7_V1
      t.float :K2CrO7_N1
      t.float :FeSO4_1
      t.float :FeSO4_2
      t.float :FeSO4_3
      t.float :FeSO4_N2
      t.float :OC
      t.float :OM

      t.timestamps
    end
  end
end
