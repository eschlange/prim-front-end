class FixScreeningQuestionColumnNames < ActiveRecord::Migration
  def change
    rename_column :screening_questions, :type, :question_type
    rename_column :screening_questions, :value, :question_value
    rename_column :screening_answers, :value, :answer_value
  end
end
