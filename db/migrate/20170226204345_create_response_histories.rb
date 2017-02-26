class CreateResponseHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :response_histories do |t|
      t.integer :question_id
      t.integer :user_id
    end
  end
end
