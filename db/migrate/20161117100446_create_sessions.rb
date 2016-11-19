class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :year
      t.string :description

      t.timestamps null: false
    end
  end
end
