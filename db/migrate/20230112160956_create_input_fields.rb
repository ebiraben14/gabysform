class CreateInputFields < ActiveRecord::Migration[7.0]
  def change
    create_table :input_fields do |t|
      t.string :placeholder
      t.string :label
      t.boolean :required
      t.string :hint
      t.references :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
