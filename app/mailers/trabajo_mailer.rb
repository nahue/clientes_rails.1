class TrabajoMailer < ActionMailer::Base
  default from: "info@***REMOVED***"

  def detalle_trabajo(usuario, cliente, trabajo)
    @cliente = cliente
    @trabajo = trabajo

    mail(to: [@cliente.email, usuario.email], subject: "Nuevo trabajo asignado")
  end

end
