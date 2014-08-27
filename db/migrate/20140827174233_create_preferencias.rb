class CreatePreferencias < ActiveRecord::Migration
  def change
    create_table :preferencias do |t|
      t.boolean :notificar_cliente
      t.references :user, index: true

      t.timestamps
    end
  end
end
