class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :date_of_birth
      t.string :date_of_death
      t.string :years_active
      t.string :nationality

      t.timestamps
    end
  end
end
