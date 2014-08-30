class Cliente < ActiveRecord::Base
  belongs_to :user
  has_many :trabajos
  validates :nombre, :apellido, presence: true
  # validates_formatting_of :email, using: :email

  def nombre_completo
    "#{self.nombre} #{self.apellido}"
  end

  def self.to_csv
    CSV.generate do |csv|
        csv << column_names
        all.each do |cliente|
            csv << cliente.attributes.values_at(*column_names)
        end
    end
  end
end

