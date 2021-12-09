class CreateBaseItemPredicates < ActiveRecord::Migration[7.0]
  def change
    create_table :base_item_predicates do |t|
      t.references :base_item_override, null: false, foreign_key: true
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
