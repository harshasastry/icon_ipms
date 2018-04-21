class CreateTowers < ActiveRecord::Migration[5.1]
  def change
    create_table :towers do |t|
      t.string :name
      t.references :unit, foreign_key: true

      t.timestamps
    end
  end
end
