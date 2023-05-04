class ChangePatients2 < ActiveRecord::Migration[7.0]
  def change
      change_table :patients do |t|
        t.belongs_to :city, index: true
      end
  end
end
