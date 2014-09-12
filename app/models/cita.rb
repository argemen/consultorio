class Cita < ActiveRecord::Base
  self.table_name = "citas"
  
  belongs_to :especialista
  belongs_to :paciente
  
  def paciente_cedula
    return paciente.cedula if paciente
  end

  def institucion_nombre=(nombre)
      self.paciente = Paciente.find_by_name(cedula) unless cedula.blank?
  end
  
end
