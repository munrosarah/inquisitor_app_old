class DropQuestionnaireTable < ActiveRecord::Migration
  def up
    drop_table :questionnaires
    drop_table :questions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
