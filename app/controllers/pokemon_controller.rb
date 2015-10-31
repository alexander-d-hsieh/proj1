class PokemonController < ApplicationController
  def capture
    p = Pokemon.find params[:id]
    p.trainer_id = current_trainer.id
    p.save
    redirect_to root_path
  end

  def damage
    p = Pokemon.find params[:id]
    p.health -= 10
    p.save
    redirect_to trainer_path :id => current_trainer.id, :method =>'get'
  end

  def new
    @pokemon = Pokemon.new
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      redirect_to current_trainer
    else
      redirect_to pokemon_new_path, :error => flash[:error] = @pokemon.errors.full_messages.to_sentence
    end


  end

end
