class ChangeDoctors3 < ActiveRecord::Migration[7.0]
  def change
      remove_column :doctors, :specialty
  end
end
