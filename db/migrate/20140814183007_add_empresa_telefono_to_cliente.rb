class AddEmpresaTelefonoToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :empresa, :string
    add_column :clientes, :telefono, :string
  end
end
