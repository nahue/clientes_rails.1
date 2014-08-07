class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.references :cliente, index: true
      t.text :descripcion
      t.references :tipo_trabajo, index: true
      t.datetime :fecha
      t.decimal :valor

      t.timestamps
    end
  end
end
