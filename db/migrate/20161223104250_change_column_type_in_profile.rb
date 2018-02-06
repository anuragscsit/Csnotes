class ChangeColumnTypeInProfile < ActiveRecord::Migration
  def change
  	change_column :profiles, :mobile_no, :string
  	change_column :profiles, :father_mobile_no, :string
  end
end
