class DropQuestionnaireTable < ActiveRecord::Migration
  def up
    drop_table :questionnaires
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
