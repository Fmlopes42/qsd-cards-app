class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(frente: params[:card][:frente], verso: params[:card][:verso])

    if @card.invalid? == true
      redirect_to invalid_path
      return
    end
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

  def include?(search)

  end

  def search
    search = params[:search]
    @card = Card.all.select do |card|
      if search.upcase == card.frente.upcase || search.upcase == card.verso.upcase
        true
      else
        false
      end
    end
    redirect_to card_path(@card)
  end

  def invalid
  end
end
