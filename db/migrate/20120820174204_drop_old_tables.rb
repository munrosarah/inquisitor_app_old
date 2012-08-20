class DropOldTables < ActiveRecord::Migration
  def up
    drop_table :questions
    drop_table :questionnaires
  end

  def down
  end
end
