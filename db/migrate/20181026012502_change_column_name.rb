class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :index, :ndex
  end
end
