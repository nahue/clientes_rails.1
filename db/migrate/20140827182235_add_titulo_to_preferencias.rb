class AddTituloToPreferencias < ActiveRecord::Migration
  def change
    add_column :preferencias, :titulo, :string
  end
end
