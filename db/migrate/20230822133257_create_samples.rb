class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.belongs_to :request, null: false, foreign_key: true
      t.string :code
      t.text :detail
      t.text :location
      t.string :plant

      t.timestamps
    end
  end
end
