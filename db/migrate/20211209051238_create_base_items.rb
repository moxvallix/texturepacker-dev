class CreateBaseItems < ActiveRecord::Migration[7.0]
  def change
    create_table :base_items do |t|
      t.references :model_type, null: false, foreign_key: true
      t.string :path

      t.timestamps
    end
  end
end
