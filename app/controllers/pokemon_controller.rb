class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def damage
    puts params[:id].length
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    pokemon.save
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to trainer_path(pokemon.trainer)
  end

  def new
    @pokemon = Pokemon.new
    puts "New pokemon"
  end
  
  def create
    @pokemon = Pokemon.new(pokemon_params)
	@pokemon.health = 100
    @pokemon.level = 1
	@pokemon.trainer = current_trainer
	if @pokemon.save
	  redirect_to trainer_path(current_trainer)
	else
	  flash[:error] = @pokemon.errors.full_messages.to_sentence
      render "new"
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end

end
