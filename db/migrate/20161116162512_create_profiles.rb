class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

      t.timestamps null: false
      t.string   :first_name
      t.string   :last_name
      t.string   :sex
     	t.date 	   :DOB
     	t.string   :eroll_no
      	t.string   :branch
      	t.string   :session
        t.integer  :mobile_no
	    t.string   :father_name
	    t.integer  :father_mobile_no
	    t.string   :p_address
	    t.string   :p_city
	    t.string   :p_state
	    t.integer  :p_pincode
	    t.string   :c_address	   
	    t.integer  :user_id
    end
  end
end
