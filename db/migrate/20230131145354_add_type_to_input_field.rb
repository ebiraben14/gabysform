class AddTypeToInputField < ActiveRecord::Migration[7.0]
  def change
    add_column :input_fields, :type, :string
  end
end
