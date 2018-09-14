class CreatePlantaes < ActiveRecord::Migration[5.2]
  def change
    create_table :plantaes do |t|
      t.string :Famille
      t.string :Type
      t.string :Img
      t.string :Plante

      t.timestamps
    end
  end
end
