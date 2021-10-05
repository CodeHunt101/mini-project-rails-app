class PokemonTypesController < ApplicationController
  def index
    @pokemon_types = PokemonType.all
  end
  
  def edit
    @pokemon_type = PokemonType.find(params[:id])
  end

  def update
    @pokemon_type = PokemonType.find(params[:id])
    @pokemon_type.update(pokemon_type_params(:type_id))
    redirect_to pokemon_path(@pokemon_type.pokemon_id)
  end

  private
  def pokemon_type_params(*args)
    params.require(:pokemon_type).permit(*args)
  end
end
