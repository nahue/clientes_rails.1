# encoding: utf-8

##
# Backup Generated: production_backup
# Once configured, you can run the backup with the following command:
#
# $ backup perform -t production_backup [-c <path_to_configuration_file>]
#
# For more information about Backup's components, see the documentation at:
# http://meskyanichi.github.io/backup
#
Model.new(:production_backup, 'Backup Produccion') do
    split_into_chunks_of 250
    compress_with Gzip

    database PostgreSQL do |db|
        db.name     = "clientes_prod"
        db.username = "clientesrails"
        db.password = "Strato1986"
        db.host     = "localhost"
    end

    archive :app_archive do |archive|
        archive.use_sudo
        archive.add '/home/deploy/clientesRails/'
    end

    store_with Dropbox do |db|
        db.api_key  = "r2wzns94uchct8k"
        db.api_secret = "jr85d8u1eyvf209"
        db.cache_path = ".cache"
#       db.path = "/clientesRails/Backups/"
        db.keep = 10
    end

    notify_by Mail do |mail|
            mail.on_success           = true
            #mail.on_warning           = true
            mail.on_failure           = true
        mail.delivery_method = :sendmail
            mail.from                 = "nahuel.chaves@gmail.com"
            mail.to                   = "nahuel.chaves@gmail.com"
  end

end
