class ChangeCities < ActiveRecord::Migration[7.0]
  def change
    change_table :cities do |t|
      t.string :name
    end
  end
end
