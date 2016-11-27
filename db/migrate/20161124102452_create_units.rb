class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|

      t.timestamps null: false
      t.integer :subject_id
    end
  end
end
