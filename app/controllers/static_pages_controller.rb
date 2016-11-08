class StaticPagesController < ApplicationController
  def home
    @logements = Logement.all
  end

  def apropos
  end

  def galerie
      @logement = Logement.find(params[:id])
  end
end
