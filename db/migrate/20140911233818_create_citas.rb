class CreateCitas < ActiveRecord::Migration
  def change
    create_table :citas do |t|
      t.integer :paciente_id
      t.integer :especialista_id
      t.date :fecha

      t.timestamps
    end
  end
end
