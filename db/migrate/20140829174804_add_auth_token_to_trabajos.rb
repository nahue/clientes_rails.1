class AddAuthTokenToTrabajos < ActiveRecord::Migration
  def change
    add_column :trabajos, :confirmation_token, :string
  end
end
