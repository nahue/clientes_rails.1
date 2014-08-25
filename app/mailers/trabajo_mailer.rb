class TrabajoMailer < ActionMailer::Base
  default from: "info@nahuel-chaves.com.ar"

  def detalle_trabajo(usuario, cliente, trabajo)
    @usuario = usuario
    @cliente = cliente
    @trabajo = trabajo

    mail(to: [@cliente.email, usuario.email], reply_to: usuario.email, subject: "Nuevo trabajo asignado")
  end

end
