class CreateModelTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :model_types do |t|
      t.string :value

      t.timestamps
    end
  end
end
