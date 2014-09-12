class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :nombre
      t.text :direccion
      t.string :email
      t.string :telefono

      t.timestamps
    end
  end
end
