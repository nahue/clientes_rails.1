class AddConfirmedToTrabajos < ActiveRecord::Migration
  def change
    add_column :trabajos, :confirmed, :boolean
  end
end
