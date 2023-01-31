class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.string :name
      t.string :placeholder
      t.boolean :requiered

      t.timestamps
    end
  end
end
