class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|

      t.timestamps null: false
      t.string  :subject_desc
	  t.integer   :semester_id	   
	  t.integer :branch_id
    end
  end
end
