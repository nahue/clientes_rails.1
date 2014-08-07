class Cliente < ActiveRecord::Base
  belongs_to :user
  has_many :trabajos
  validates_formatting_of :email, using: :email
end
