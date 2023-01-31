class CreateBases < ActiveRecord::Migration[7.0]
  def change
    create_table :bases do |t|
      t.string :name
      t.string :type
      t.string :label

      t.timestamps
    end
  end
end
