class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :country
      t.string :country_code

      t.timestamps
    end
  end
end
