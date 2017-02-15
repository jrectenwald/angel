class CreateCustomerResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_responses do |t|
      t.integer :answer_id
      t.integer :confidence
      t.integer :user_id
      t.integer :csr_id
      t.string :query
    end
  end
end
