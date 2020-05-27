class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer :artist_id
      t.string :image_url
      t.string :title
      t.integer :date
      t.string :media
      t.string :description

      t.timestamps
    end
  end
end
