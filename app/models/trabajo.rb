class Trabajo < ActiveRecord::Base
    belongs_to :cliente
    belongs_to :tipo_trabajo

    before_create { generate_token(:confirmation_token) }

    self.per_page = 10

    def generate_token(column)
        begin
            self[column] = SecureRandom.urlsafe_base64
        end while Trabajo.exists?(column => self[column])
    end

end
