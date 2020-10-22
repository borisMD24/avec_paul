class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :city
      t.timestamps
    end
    add_reference :appointments, :city, foreign_key: true
  end
end
