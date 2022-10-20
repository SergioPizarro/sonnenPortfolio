class ProdukteController < ApplicationController

  def index
    @produkte = Produkte.all
  end

  def show
    @produkte = Produkte.find(params[:id])
  end


  
end


#Produkte.create(tittle:"Pakete", description:"Energielösungen für Ihr Zuhause.")
#Produkte.create(tittle:"Hardware", description:"Stromspeicher und Notstromlösungen.")
#Produkte.create(tittle:"Stromtarife", description:"Saubere Energie - mit und ohne PV-Anlage. ")
#Produkte.create(tittle:"E-Mobilität", description:"Endlich sauber Autofahren und tanken.")
#Produkte.create(tittle:"Flexibilität", description:"Flexibel in Ihre Energiezukunft investieren.")
