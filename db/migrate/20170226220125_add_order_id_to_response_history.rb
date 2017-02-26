class AddOrderIdToResponseHistory < ActiveRecord::Migration[5.0]
  def change
    add_column :response_histories, :order_id, :integer
  end
end
