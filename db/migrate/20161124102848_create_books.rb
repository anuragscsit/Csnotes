class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.timestamps null: false
      t.string :name
      t.string :book_desc
      t.integer :subject_id
      t.integer :semester_id	   
	  t.integer :branch_id
    end
  end
end
