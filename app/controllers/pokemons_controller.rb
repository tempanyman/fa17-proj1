class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attribute(:trainer, current_trainer)
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attribute(:health, @pokemon.health - 10)
    if (@pokemon.health <= 0)
      @pokemon.destroy
    end
    redirect_to trainer_path(@pokemon.trainer.id)
  end

  def create
    @pokemon = Pokemon.create(name: params[:pokemon][:name], level: 1, health: 100, trainer: current_trainer)
    if @pokemon.errors.blank?
      redirect_to trainer_path(current_trainer.id)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to pokemons_new_path
    end

  end

  def new

  end

end
