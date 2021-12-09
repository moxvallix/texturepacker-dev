class CreateBaseItemOverrides < ActiveRecord::Migration[7.0]
  def change
    create_table :base_item_overrides do |t|
      t.references :base_item, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
