class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :company_id
      t.string :response_text

      t.timestamps
    end
  end
end
