class ProdukteController < ApplicationController

  def index
    @produkte = Produkte.all
  end

  def show
    @produkte = Produkte.find(params[:id])
  end
end
