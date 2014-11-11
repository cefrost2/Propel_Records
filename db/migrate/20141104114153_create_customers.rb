class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.integer "customer_number"
    	t.string "customer_name", :limit => 100
    	t.string "contact_name", :limit => 40
    	t.string "bill_attention", :limit => 50, :default => "Accounts Payable" 
    	t.string "need_to_work"
      t.string "invoice_type"

      t.timestamps
    end
  end
end
