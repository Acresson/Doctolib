class ChangeAppointmentsTable < ActiveRecord::Migration[7.0]
  def change
    change_table :appointments do |t|
      t.datetime :date
    end
  end
end
