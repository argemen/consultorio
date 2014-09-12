class Especialista < ActiveRecord::Base
	self.table_name = "especialistas"

	belongs_to :especialidad
	has_and_belongs_to_many :paciente
	
	def nombre_completo
    return self.cedula + ' - ' + self.nombres + ' '+ self.apellidos
  end
end
