class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.references :user, index: true
      t.string :nombre
      t.string :apellido
      t.string :email
      t.text :otros_datos

      t.timestamps
    end
  end
end
