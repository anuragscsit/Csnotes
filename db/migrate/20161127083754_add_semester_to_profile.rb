class AddSemesterToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :semester, :string
  end
end
