class CreateFacilityImages < ActiveRecord::Migration[6.0]
  def change
    create_table :facility_images do |t|
      t.references :facility, foreign_key:true
      t.string :image

      t.timestamps
    end
  end
end
