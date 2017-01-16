class CardsController < ApplicationController
  SEPARADOR = " |> "
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(frente: params[:card][:frente], verso: params[:card][:verso])
    @card.save
    redirect_to @card
  end

  def show
    card = Card.find(params[:id])
    @card = "#{card.frente}#{SEPARADOR}#{card.verso}"
  end

  def delete
    @card = Card.find(params[:id])
    @card.delete
    
  end

end
