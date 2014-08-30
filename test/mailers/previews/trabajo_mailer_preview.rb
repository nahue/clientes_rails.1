# Preview all emails at http://localhost:3000/rails/mailers/trabajo_mailer
class TrabajoMailerPreview < ActionMailer::Preview
    def detalle_trabajo()
        current_user = User.first
        @cliente = Cliente.find(2)
        @trabajo = @cliente.trabajos.last
        TrabajoMailer.detalle_trabajo(current_user, @cliente, @trabajo)
    end
end
