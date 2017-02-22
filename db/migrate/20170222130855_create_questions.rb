class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :query
      t.integer :company_id
      t.integer :confidence
      t.integer :conversation_id

      t.timestamps
    end
  end
end
