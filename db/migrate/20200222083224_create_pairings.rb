class CreatePairings < ActiveRecord::Migration[6.0]
  def change
    create_table :pairings do |t|
      t.references :ingredient
      t.references :style

      t.timestamps
    end
  end
end
