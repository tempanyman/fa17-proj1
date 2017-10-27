class RemoveHealthFromPokemons < ActiveRecord::Migration[5.1]
  def change
    remove_column :pokemons, :health, :string
    remove_column :pokemons, :integer, :string
  end
end
