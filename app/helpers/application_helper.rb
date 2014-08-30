module ApplicationHelper
    def appname(user)
        if user.present? and user.get_preferencia(:titulo) != ""
            user.get_preferencia(:titulo) || "wip"
        else
            "wip"
        end
    end

    def avatar_url(user, size)
        gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
        "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
    end
end
