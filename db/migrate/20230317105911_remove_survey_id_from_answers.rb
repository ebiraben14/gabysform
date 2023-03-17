class RemoveSurveyIdFromAnswers < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :survey_id
  end
end
