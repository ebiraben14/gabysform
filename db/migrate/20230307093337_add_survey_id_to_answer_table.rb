class AddSurveyIdToAnswerTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :survey, index: true, foreign_key: true
  end
end
