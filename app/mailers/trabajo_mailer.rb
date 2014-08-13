class TrabajoMailer < ActionMailer::Base
  default from: "nahuel.chaves@gmail.com"

  def detalle_trabajo(usuario, cliente, trabajo)
    @cliente = cliente
    @trabajo = trabajo

    mail(to: [@cliente.email, usuario.email], subject: "Nuevo trabajo asignado")
  end

end
