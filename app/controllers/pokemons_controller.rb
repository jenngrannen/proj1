class PokemonsController < ApplicationController

  def new

  end

  def create
    if not params[:name].nil?
      if not params[:ndex].nil?
        p = Pokemon.new(
	         name: params[:name],
           level: 1,
           health: 100,
           trainer: current_trainer
         )
         p.save
       end
     end
     redirect_to trainer_path(id: current_trainer)
   end
end
