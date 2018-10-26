class PokemonController < ApplicationController

  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.update("trainer" => current_trainer)
#    Pokemon.where(index: @params[index]).each{ |c| c.update(trainer = current_trainer)}
    redirect_to '/'
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    updated_health = pokemon.health - 10
    pokemon.update("health" => updated_health)
    redirect_to trainer_path(id: pokemon.trainer_id)
  end

  def new

  end

  def create
    poke = Pokemon.find(name: params[:name])
    if params[:name].blank? or params[:name].nil?
      redirect_to '/pokemon/new'
    elsif not poke.nil?
      redirect_to '/pokemon/new'
    else
  #  if not params[:name].nil?
  #    if not params[:ndex].nil?
        p_params = {}
        p_params[:name] = params[:name]
        p_params[:level] = 1
        p_params[:health] = 100
        p_params[:ndex] = 10 #params[:ndex]
        p = Pokemon.new(p_params)
        p.name = params[:name]
        p.ndex = params[:ndex]
        p.trainer_id = current_trainer.id
        p.save
#       end
#     end
     redirect_to trainer_path(id: current_trainer)
   end
   end
end
