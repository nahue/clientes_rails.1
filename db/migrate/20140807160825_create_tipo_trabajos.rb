class CreateTipoTrabajos < ActiveRecord::Migration
  def change
    create_table :tipo_trabajos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
