require 'digest/sha2'
class TrabajoMailer < ActionMailer::Base


  #default from: "info@nahuel-chaves.com.ar"

  def detalle_trabajo(usuario, cliente, trabajo)

    @usuario = usuario
    @cliente = cliente
    @trabajo = trabajo
    to = usuario.get_preferencia(:notificar_cliente) ? [@cliente.email, usuario.email] : usuario.email
    dominio = usuario.email.split("@")[1]

    mail(
        "to" => to,
        "from" => usuario.email,
        "reply_to" => usuario.email,
        "subject" => "Nuevo trabajo asignado",
        "Message-ID" => "#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@#{dominio}"
    )

  end

end
