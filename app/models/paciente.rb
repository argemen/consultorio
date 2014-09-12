class Paciente < ActiveRecord::Base
  has_and_belongs_to_many :especialista
  
  def nombre_completo
    return self.cedula + ' - ' + self.nombres + ' '+ self.apellidos
  end
  
  
end
