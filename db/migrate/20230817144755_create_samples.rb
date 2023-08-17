class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.string :code
      t.text :detail
      t.text :location
      t.string :plant
      t.float :ph_Weight
      t.float :ph_OR
      t.float :ph_1
      t.float :ph_2
      t.float :ph_3

      t.timestamps
    end
  end
end
