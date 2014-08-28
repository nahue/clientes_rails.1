class AddAttachmentLogoToPreferencias < ActiveRecord::Migration
  def self.up
    change_table :preferencias do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :preferencias, :logo
  end
end
