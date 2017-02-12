class AddCompanyIdToFaqs < ActiveRecord::Migration[5.0]
  def change
    add_column :faqs, :company_id, :integer
  end
end
