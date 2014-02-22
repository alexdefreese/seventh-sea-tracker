class CharactersController < ApplicationController
  before_action :signed_in_filter
  before_action :correct_user_filter, only: [:show, :update, :edit, :destroy]

  def index
    @characters = current_user.characters
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = current_user.characters.build(character_params)
    if @character.save
      flash[:notice] = "Created Character Successfully"
      redirect_to @character
    else
      render 'new'
    end
  end

  def edit
    @character = current_user.characters.find(params[:id])
  end

  def update
    if @character.update_attributes(character_params)
      flash[:notice] = "Character Updated"
      redirect_to @character
    else
      render 'edit'
    end
  end

  def destroy
    Character.find(params[:id]).destroy
    flash[:notice] = "Character Destroyed"
    redirect_to characters_path
  end

  private
    def character_params
      params.require(:character).permit(:name, :panache)
    end

    def correct_user_filter
      @character = current_user.characters.find_by(id: params[:id])
      redirect_to root_path if @character.nil?
    end
end
