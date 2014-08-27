module ApplicationHelper
    def appname
        current_user.preferencia.titulo.presence || "wip"
    end

    def avatar_url(user, size)
        gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
        "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    end
end
