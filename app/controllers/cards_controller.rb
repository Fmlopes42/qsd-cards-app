class CardsController < ApplicationController
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
    @card = Card.find(params[:id])
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  def search
  end
end
