class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.string "description"
    	t.string "address1"
    	t.string "address2"
    	t.string "mail_stop"
    	t.string "city"
    	t.string "state", :limit => 2
    	t.string "zip"
      t.timestamps
    end
  end
end
