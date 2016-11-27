class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|

      t.timestamps null: false
      t.string  :notes_desc
	  t.integer   :semester_id	   
	  t.integer :branch_id
	  t.integer :unit_id

    end
  end
end
