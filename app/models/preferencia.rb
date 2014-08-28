class Preferencia < ActiveRecord::Base
  belongs_to :user
  has_attached_file :logo,
    :url  => "/assets/logos/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/logos/:id/:style/:basename.:extension"

  validates_attachment_content_type :logo, :content_type => %w(image/jpeg image/jpg image/png)

end
