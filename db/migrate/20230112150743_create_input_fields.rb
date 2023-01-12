class CreateInputFields < ActiveRecord::Migration[7.0]
  def change
    create_table :input_fields do |t|
      t.string :placeholder
      t.string :label
      t.boolean :required
      t.integer :form_id

      t.timestamps
    end
  end
end
