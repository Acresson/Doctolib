class ChangePatientsTable < ActiveRecord::Migration[7.0]
  def change
    change_table :patients do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
