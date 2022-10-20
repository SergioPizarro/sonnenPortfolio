class CardsController < ApplicationController
  def show

  end

  def index

    @produkte = Produkte.find(params[:produkte_id])
    @cards = Card.where(produkte_id: @produkte.id)
  end
end
