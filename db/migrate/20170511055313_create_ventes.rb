class CreateVentes < ActiveRecord::Migration[5.0]
  def change
    create_table :ventes do |t|
      t.string :name
      t.integer :price
      t.string :desc
      t.string :desc_home
      t.string :city
      t.string :postal
      t.string :country
      t.string :street
      t.string :street_number
      t.string :surface
      t.string :bedroom
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :image6

      t.timestamps
    end
  end
end
