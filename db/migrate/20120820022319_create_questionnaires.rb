class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :title

      t.timestamps
    end
    add_index :questionnaires, :title, unique: true
  end
end
