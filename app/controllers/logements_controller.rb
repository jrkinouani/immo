class LogementController < ApplicationController
  def index
    @logements = Logement.all
    if params[:search]
    @logements = Logement.search(params[:search]).order("created_at DESC")
    else
    @logements = Logement.all.order('created_at DESC')
    end
  end
end
