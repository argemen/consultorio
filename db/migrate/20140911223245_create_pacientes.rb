class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :cedula, null:false
      t.string :nombres, null:false
      t.string :apellidos, null:false
      t.string :direccion
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end
