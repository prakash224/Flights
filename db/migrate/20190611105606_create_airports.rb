class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :airport_city
      t.string :airport_code
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
