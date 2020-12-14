class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :title
      t.text :description
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
