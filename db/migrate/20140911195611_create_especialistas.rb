class CreateEspecialistas < ActiveRecord::Migration
  def change
    create_table :especialistas do |t|
      t.integer :especialidad_id, null: false
      t.string :cedula, null: false
      t.string :nombres, null: false
      t.string :apellidos, null: false
      t.string :email
      t.string :telefono, null: false

      t.timestamps
    end
  end
end
