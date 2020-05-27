class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :date_of_birth
      t.integer :date_of_death
      t.string :active_years
      t.string :nationality

      t.timestamps
    end
  end
end
