class TipoTrabajo < ActiveRecord::Base
  has_many :trabajos
end
