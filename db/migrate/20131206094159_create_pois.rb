class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.text :notes

      t.timestamps
    end
  end
end
