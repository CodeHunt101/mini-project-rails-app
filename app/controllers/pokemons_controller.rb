class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def new
    @pokemon = Pokemon.new
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
