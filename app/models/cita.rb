class Cita < ActiveRecord::Base
  self.table_name = "citas"
  
  belongs_to :especialista
  belongs_to :paciente
  
  def paciente_cedula
    return paciente.cedula if paciente
  end
  
  def paciente_cedula=(cedula)
      self.paciente = Paciente.find_by_name(cedula) unless cedula.blank?
  end
  
  def paciente_info
    return paciente.cedula + ' - '  + paciente.nombres + ' ' + paciente.apellidos if paciente
  end
  
  def especialista_info
    return especialista.nombres + ' ' + especialista.apellidos if especialista
  end
end
