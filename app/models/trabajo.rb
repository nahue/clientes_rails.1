class Trabajo < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo_trabajo
end
