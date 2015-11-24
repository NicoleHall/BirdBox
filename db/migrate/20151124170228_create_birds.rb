class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :name
      t.string :image
      t.references :species, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
