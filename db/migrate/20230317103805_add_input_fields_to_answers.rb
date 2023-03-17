class AddInputFieldsToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :input_field, index: true, foreign_key: true, null: false
  end
end
