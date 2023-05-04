class ChangeDoctors2 < ActiveRecord::Migration[7.0]
  def change
    change_table :doctors do |t|
      t.belongs_to :city, index: true
    end
  end
end
