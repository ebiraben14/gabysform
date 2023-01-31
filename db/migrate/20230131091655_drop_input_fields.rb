class DropInputFields < ActiveRecord::Migration[7.0]
  def change
    drop_table :input_fields
  end
end
