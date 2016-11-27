class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :sem
      t.string :description

      t.timestamps null: false
    end
  end
end
